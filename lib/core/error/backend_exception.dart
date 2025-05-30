import 'dart:io';
import '../core.dart';

class BackendException extends GeneralException {
  BackendException({
    DioException? dioException,
    super.message,
    super.errors,
  }) {
    // Extract relevant information from DioException
    final dynamic errorResponse =
        dioException?.response?.data ?? <String, dynamic>{};
    final int status = dioException?.response?.statusCode ?? 500;
    final bool noInternet = _isNoInternetError(dioException);

    if (status == 403 && PrefData.isSignedIn) {
      // getIt<AppManagerCubit>().logOut();
    }

    // Populate `message` and `errors`
    _processErrorResponse(errorResponse, noInternet, status);
  }

  // Helper to check if the error indicates a network issue
  bool _isNoInternetError(DioException? dioException) {
    return dioException != null &&
        (dioException.error is SocketException ||
            dioException.type == DioExceptionType.connectionTimeout ||
            dioException.type == DioExceptionType.receiveTimeout ||
            dioException.type == DioExceptionType.sendTimeout ||
            dioException.type == DioExceptionType.connectionError);
  }

  void _processErrorResponse(
      dynamic errorResponse, bool noInternet, int status) {
    if (errorResponse is Map<String, dynamic>) {
      if (errorResponse.containsKey('fields_errors')) {
        // Extract field errors
        final Map<String, dynamic>? fieldErrors =
            errorResponse['fields_errors'] as Map<String, dynamic>?;
        errors = fieldErrors?.map((String key, dynamic value) {
          if (value is List) {
            return MapEntry<String, String>(
                key, value.join(', ')); // Join list of messages
          }
          return MapEntry<String, String>(key, value.toString());
        });
        message = errorResponse['message'] ?? "";
        return;
      } else if (errorResponse.containsKey('message')) {
        message = errorResponse['message'];
        return;
      }
    }

    // Handle unstructured or null response
    if (noInternet) {
      message = kNoInternetConnection;
    } else {
      message = _getDefaultMessageForStatus(status);
    }
  }

  // Provides default messages based on HTTP status codes
  String _getDefaultMessageForStatus(int status) {
    switch (status) {
      case 403:
        return kUnauthorizedClient;
      case 404:
        return kNoDataFound;
      case 401:
        return kInvalidToken;
      case 406:
        return kGenericErrorMessage;
      case 422:
        return kUnacceptableContent;
      default:
        return status == 500 ? kUnknownMessage : kGenericErrorMessage;
    }
  }

  @override
  String toString() {
    return message;
  }
}
