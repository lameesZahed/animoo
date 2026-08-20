import 'package:dio/dio.dart';

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
  })async {
    try {
      Response response = await dio.get(
        url,
        queryParameters: queryParameters,
        data: body,
        options: Options(headers: headers),
      );
         final statusCode = response.statusCode!;
         if(statusCode>=200 && statusCode<300){

         }
         else{

         }
    } catch (e) {
      // TODO
    }
  }

  // Dio dio ;
}
