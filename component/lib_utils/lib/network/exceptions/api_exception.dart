import 'base_api_exception.dart';

class ApiException extends BaseApiException {
  ApiException({
    required int code,
    String message = "",
  }) : super(code: code, message: message);
}
