import 'package:dio/dio.dart';
import '../Errors/server_exception.dart';
import 'api_consts.dart';
import 'api_consumer.dart';

class DioService implements ApiConsumer {
  Dio dio;

  DioService(this.dio) {
    initDio();
  }

  void initDio() {
    dio.options.baseUrl = ApiConsts.baseUrl;
    dio.options.connectTimeout = Duration(seconds: 60);
  }

  @override
  Future<dynamic> delete({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<dynamic> get({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<dynamic> post({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    try {
      Response response = await dio.get(
        url,
        queryParameters: queryParameters,
        data: body,
        options: Options(headers: headers),
      );

      return response.data;
    } catch (e) {
      handleException(e);
    }
  }


  void handleException(e) {
    if (e is ServerException) {
      throw e;
    }
    if (e is DioException) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          throw ServerException(
            data: {"error": e.error.toString()},
            message: "Connection Timeout",
          );
        case DioExceptionType.sendTimeout:
          throw ServerException(
            data: {"error": e.error.toString()},
            message: "Send Timeout",
          );
        case DioExceptionType.receiveTimeout:
          throw ServerException(
            data: {"error": e.error.toString()},
            message: "Receive Timeout",
          );
        case DioExceptionType.badResponse:
          throw ServerException(
            data: {"error": e.error.toString()},
            message: "Bad Response",
          );
        case DioExceptionType.cancel:
          throw ServerException(
            data: {"error": e.error.toString()},
            message: "Request Cancelled",
          );
        case DioExceptionType.unknown:
          throw ServerException(
            data: {"error": e.error.toString()},
            message: "Unknown Error",
          );
        case DioExceptionType.badCertificate:
          throw ServerException(
            data: {"error": e.error.toString()},
            message: "Bad Certificate",
          );
        case DioExceptionType.connectionError:
          throw ServerException(
            data: {"error": e.error.toString()},
            message: "Connection Error",
          );
        case DioExceptionType.transformTimeout:
          throw ServerException(
            data: {"error": e.error.toString()},
            message: "Transform Timeout",
          );
        default:
          throw ServerException(
            data: {"error": e.error.toString()},
            message: "Unknown Error",
          );
      }
    }
  }

}

