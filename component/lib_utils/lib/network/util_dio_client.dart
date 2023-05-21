import 'dart:io';

import 'package:dio/io.dart';
import 'package:lib_utils/network/util_dio_logger.dart';
import 'package:lib_utils/network/utils_request_headers.dart';
import '../config/app_build_config.dart';
import 'package:dio/dio.dart';
import '../config/app_environment.dart';

class DioClient {
  static final String baseUrl = APPBuildConfig.instance.config.baseUrl;

  static Dio? _instance;

  static const int _maxLineWidth = 90;
  static final _prettyDioLogger = UtilsDioLogger(
      request: APPBuildConfig.instance.environment != APPEnvironment.release,
      requestHeader:
          APPBuildConfig.instance.environment != APPEnvironment.release,
      requestBody:
          APPBuildConfig.instance.environment != APPEnvironment.release,
      responseBody:
          APPBuildConfig.instance.environment != APPEnvironment.release,
      responseHeader:
          APPBuildConfig.instance.environment != APPEnvironment.release,
      error: APPBuildConfig.instance.environment != APPEnvironment.release,
      compact: APPBuildConfig.instance.environment != APPEnvironment.release,
      maxWidth: _maxLineWidth);

  static final BaseOptions _options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
  );

  static Dio get httpDio {
    if (_instance == null) {
      _instance = Dio(_options);

      _instance!.interceptors.add(_prettyDioLogger);

      return _instance!;
    } else {
      _instance!.interceptors.clear();
      _instance!.interceptors.add(_prettyDioLogger);

      return _instance!;
    }
  }

  ///returns a Dio client with Access token in header
  static Dio get tokenClient {
    _addInterceptors();

    return _instance!;
  }

  ///returns a Dio client with Access token in header
  ///Also adds a token refresh interceptor which retry the request when it's unauthorized
  static Dio get dioWithHeaderToken {
    bool kIsWeb = identical(0, 0.0);
    _addInterceptors();
    if (kIsWeb) {
      return _instance!;
    }
    (_instance?.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    return _instance!;
  }

  static _addInterceptors() {
    _instance ??= httpDio;
    _instance!.interceptors.clear();
    _instance!.interceptors.add(UtilsRequestHeaderInterceptor());
    _instance!.interceptors.add(_prettyDioLogger);
  }

  static String _buildContentType(String version) {
    return version;
  }

  DioClient.setContentType(String version) {
    _instance?.options.contentType = _buildContentType(version);
  }

  DioClient.setContentTypeApplicationJson() {
    _instance?.options.contentType =
        "application/json;text/xml;charset=utf-8;application/x-www-form-urlencoded";
  }
}
