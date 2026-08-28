abstract class ApiConsumer{
  const ApiConsumer();
  Future <dynamic>get({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
});
  Future <dynamic>post({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
});
  Future <dynamic>delete({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
});
  Future<dynamic>patch({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
});
  Future<dynamic>put({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });}