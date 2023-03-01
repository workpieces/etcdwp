import 'dart:io';

import 'base_api_exception.dart';

class UnauthorizedException extends BaseApiException {
  UnauthorizedException(String message)
      : super(code: HttpStatus.unauthorized, message: message);
}
