import 'dart:io';

import 'base_api_exception.dart';

class BadCertificateException extends BaseApiException {
  BadCertificateException(String message) : super(code: -1, message: message);
}
