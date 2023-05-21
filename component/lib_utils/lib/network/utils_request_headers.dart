import 'package:dio/dio.dart';

class UtilsRequestHeaderInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    getCustomHeaders(options).then((customHeaders) {
      options.headers.addAll(customHeaders);
      super.onRequest(options, handler);
    });
  }

  Future<Map<String, String>> getCustomHeaders(RequestOptions options) async {
    var customHeaders = <String,String>{};
    if (!options.headers.keys.contains("content-type")) {
      customHeaders['content-type'] = 'application/json';
    }
    if (!options.headers.keys.contains("Accept")) {
      customHeaders['Accept'] = 'application/json,*/*';
    }
    if (!options.headers.keys.contains("token")) {
        customHeaders['token'] = '';
    }
    return customHeaders;
  }
}
