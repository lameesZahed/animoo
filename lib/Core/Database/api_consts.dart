import 'package:envied/envied.dart';
part 'api_consts.g.dart';
@Envied(path: '.env')
abstract class ApiConsts{
  @EnviedField(varName: 'BASE_URL')
  static String baseUrl = ApiConsts.baseUrl;

  @EnviedField(varName: 'SIGN_UP_ENDPOINT')
  static String signUpEndpoint = ApiConsts.signUpEndpoint;

  @EnviedField(varName: 'LOG_IN_ENDPOINT')
  static String logInEndpoint = ApiConsts.logInEndpoint;
}