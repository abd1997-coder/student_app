import '../core.dart';

typedef AppHttpClientErrorHandler = void Function(BackendException e);

enum RequestType { get, post, put, patch, delete }

Logger logger = Logger(
  printer: PrettyPrinter(methodCount: 0, errorMethodCount: 5, lineLength: 75),
);

class DioClient {
  DioClient() {
    _dio = _createDio();
  }

  late Dio _dio;

  Dio get dio => _dio;

  String get baseUrl => _dio.options.baseUrl;

  set baseUrl(String value) {
    _dio.options.baseUrl = value;
  }

  void resetBaseUrl() {
    baseUrl = EndPoint.baseUrl;
  }

  final List<AppHttpClientErrorHandler> errorHandlers =
      <AppHttpClientErrorHandler>[];

  Dio _createDio({String? baseUrl}) {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: baseUrl ?? EndPoint.baseUrl,
        headers: <String, dynamic>{'Content-Type': 'application/json'},
        sendTimeout: ConstantManager.timeOutDuration,
        receiveTimeout: ConstantManager.timeOutDuration,
        connectTimeout: ConstantManager.timeOutDuration,
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          String token = PrefData.token ?? '';
          // Attach token to headers dynamically
          if (token.isNotEmpty) {
            options.headers['Authorization'] = 'JWT $token';
            // options.headers['Authorization'] = 'JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzQ3MDg2MzAxLCJpYXQiOjE3NDcwNzU1MDEsImp0aSI6IjI4YTgxMzE2ZDA2MDQ0NGM4MjFkMDBmYzgxZjY5Njg1IiwidXNlcl9pZCI6IjRhMzlhOWQwLTM5YWMtNGQ2ZS04ZDhhLTEyZmU1Y2Y4ZWVjNyJ9.wcb11iP1sO0eYyjp6LYCeuE8YHF1z_C3tx8GG83HMXk';
          }
          options.headers['Accept-language'] =
              LocalizationConfig.currentLanguage;
          final String requestPath = '${options.baseUrl}${options.path}';
          logger.i('${options.method} request => $requestPath ');
          logger.i('${options.headers}');
          logger.i('queryParameters => ${options.queryParameters}');
          if (options.method != 'GET') {
            logger.i('body => ${options.data}');
          }
          handler.next(options);
        },
        onResponse: (
          Response<dynamic> response,
          ResponseInterceptorHandler handler,
        ) {
          logger.d(
            'StatusCode: ${response.statusCode}, Data: ${response.data}',
          );
          handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) async {
          final String requestPath =
              '${error.requestOptions.baseUrl}${error.requestOptions.path}}';
          logger.e('${error.requestOptions.method} request => $requestPath ');
          logger.e(
            'StatusCode: ${error.response?.statusCode}, Message: ${error.response?.data}',
          );

          if (error.response?.statusCode == 401 &&
              !requestPath.contains(EndPoint.refreshToken)) {
            await getRefreshToken();

            // Retry the failed request with new tokens
            handler.resolve(await dio.fetch(error.requestOptions));
          } else {
            if (requestPath.contains(EndPoint.refreshToken)) {
              PrefData.fcmTokenSent = false;
              getIt<AppManagerCubit>().logOut();
            }
            for (final AppHttpClientErrorHandler handler in errorHandlers) {
              handler(BackendException(dioException: error));
            }
            handler.next(error);
          }
        },
      ),
    );

    return dio;
  }

  Future<Response<dynamic>> sendRequest(
    RequestType method,
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    FormData? formData,
  }) async {
    try {
      switch (method) {
        case RequestType.get:
          return await _dio.get(url, queryParameters: queryParameters);
        case RequestType.post:
          return await _dio.post(
            url,
            queryParameters: queryParameters,
            data: data ?? formData,
          );
        case RequestType.patch:
          return await _dio.patch(
            url,
            queryParameters: queryParameters,
            data: data ?? formData,
          );
        case RequestType.put:
          return await _dio.put(
            url,
            queryParameters: queryParameters,
            data: data ?? formData,
          );
        case RequestType.delete:
          return await _dio.delete(
            url,
            queryParameters: queryParameters,
            data: data,
          );
      }
    } on DioException catch (e) {
      return _handleError(e);
    }
  }

  Future<void> getRefreshToken() async {
    try {
      Logger().w('Refresh Token');
      final Response<dynamic> response = await _dio.post(
        EndPoint.refreshToken,
        data: <String, String?>{'refresh': PrefData.refreshToken},
      );
      PrefData.token =
          (response.data as Map<String, dynamic>)['results']['access']
              as String?;
      PrefData.refreshToken =
          (response.data as Map<String, dynamic>)['results']['refresh']
              as String?;
    } catch (e) {
      throw BackendException(dioException: e as DioException);
    }
  }

  Response<dynamic> _handleError(DioException dioError) {
    final BackendException backendException = BackendException(
      dioException: dioError,
    );
    for (final AppHttpClientErrorHandler handler in errorHandlers) {
      handler(backendException);
    }
    throw backendException;
  }
}
