import '../../core.dart';

Future<Uint8List?> downloadImage(String imageUrl) async {
  try {
    final Dio dio = Dio();
    final Response<dynamic> response = await dio.get(
      imageUrl,
      options: Options(responseType: ResponseType.bytes),
    );
    if (response.statusCode == 200) {
      return response.data;
    }
  } catch (e) {
    log('Error fetching image: $e');
  }
  return null;
}
