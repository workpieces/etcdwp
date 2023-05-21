import 'dart:io';

import 'base_api_exception.dart';

class ForbiddenException extends BaseApiException {
  ForbiddenException(String message)
      : super(code: HttpStatus.forbidden, message: message);
}
