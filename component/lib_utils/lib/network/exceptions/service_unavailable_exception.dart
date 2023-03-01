import 'dart:io';

import 'base_api_exception.dart';

class ServiceUnavailableException extends BaseApiException {
  ServiceUnavailableException(String message)
      : super(code: HttpStatus.serviceUnavailable, message: message);
}
