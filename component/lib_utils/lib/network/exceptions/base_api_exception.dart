import 'app_exception.dart';

abstract class BaseApiException extends AppException {
  final int code;
  BaseApiException({this.code = -1, String message = ""})
      : super(message: message);
}
