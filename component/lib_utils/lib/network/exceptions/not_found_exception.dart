import 'dart:io';
import 'api_exception.dart';

class NotFoundException extends ApiException {
  NotFoundException(String message, String code)
      : super(code: HttpStatus.notFound, message: message);
}
