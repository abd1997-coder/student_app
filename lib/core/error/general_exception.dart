abstract class GeneralException implements Exception {
  GeneralException({this.message = '', this.errors});

  String message;
  Map<String, String>? errors;

  @override
  String toString() {
    return message;
  }
}
