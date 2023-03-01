import '';
import 'package:dio/dio.dart';
import '../config/app_build_config.dart';
import '../network/exceptions/base_exception.dart';
import '../network/util_dio_client.dart';
import '../network/util_error_handlers.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

abstract class BaseClientNetwork {
  Dio get dioClient => DioClient.dioWithHeaderToken;

  final logger = APPBuildConfig.instance.config.logger;
  Future<Response<T>> callApiWithErrorParser<T>(Future<Response<T>> api) async {
    try {
      Response<T> response = await api;
      if (response.statusCode != HttpStatus.ok) {
        logger.e("response: >>>>>>> $response");
      }
      return response;
    } on DioError catch (dioError) {
      Exception exception = handleDioError(dioError);
      logger.e(
          "Throwing error from network: >>>>>>> $exception : ${(exception as BaseException).message}");
      throw exception;
    } catch (error) {
      logger.e("Generic error: >>>>>>> $error");
      if (error is BaseException) {
        rethrow;
      }
      throw handleError("$error");
    }
  }
}
