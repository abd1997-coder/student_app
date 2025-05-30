import 'error.dart';

class LocalException extends GeneralException {
  LocalException({
    super.message,
  });

  @override
  String toString() {
    return message;
  }
}
