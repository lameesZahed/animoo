abstract class ApiConsumer{
  const ApiConsumer();
  Future <dynamic>get({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool isFormData = false,
});
  Future <dynamic>post({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    bool isFormData = false,
});
  Future <dynamic>delete({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool isFormData = false,
});
  Future<dynamic>patch({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    bool isFormData = false,
});
  Future<dynamic>put({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    bool isFormData = false,
  });}