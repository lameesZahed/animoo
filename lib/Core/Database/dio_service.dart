import 'package:animoo/Core/Errors/error_model.dart';
import 'package:dio/dio.dart';
import '../Errors/server_exception.dart';
import 'api_consts.dart';
import 'api_consumer.dart';
import 'api_interceptor.dart';

class DioService implements ApiConsumer {
  Dio dio;

  DioService(this.dio) {
    initDio();
  }

  void initDio() {
    dio.options.baseUrl = ApiConsts.baseUrl;
    dio.options.connectTimeout = Duration(seconds: 60);
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true
    ));
  }

  @override
  Future<dynamic> delete({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    bool isFormData = false,
  }) async {
    try {
      final Response response = await dio.delete(
        url,
        queryParameters: queryParameters,
        data: (isFormData && body != null) ? FormData.fromMap(body) : body,
        options: Options(headers: headers),
      );
      return response.data;
    } on DioException catch (e) {
      {
        handleException(e);
      }
    }
  }





  @override
  Future<dynamic> get({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool isFormData = false,
  }) async {
    try {
      final Response response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return response.data;
    } on DioException catch (e) {
      handleException(e);
    }
  }





  @override
  Future<dynamic> post({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    bool isFormData = false,
  }) async {
    try {
      Response response = await dio.post(
        url,
        queryParameters: queryParameters,
        data: (isFormData) ? FormData.fromMap(body!) : body,
        options: Options(headers: headers),
      );

      return response.data;
    }on DioException catch (e) {
      handleException(e);
    }
  }





  @override
  Future patch({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    bool isFormData = false,
  }) async {
    try {
      final Response response = await dio.patch(
        url,
        queryParameters: queryParameters,
        data: (isFormData) ? FormData.fromMap(body!) : body,
        options: Options(headers: headers),
      );
      return response.data;
    }on DioException catch (e) {
      handleException(e);
    }
  }





  @override
  Future put({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    bool isFormData = false,
  }) async {
    try {
      final Response response = await dio.put(
        url,
        queryParameters: queryParameters,
        data: (isFormData) ? FormData.fromMap(body!) : body,
        options: Options(headers: headers),
      );
      return response.data;
    }on DioException catch (e) {
      handleException(e);
    }
  }
}
