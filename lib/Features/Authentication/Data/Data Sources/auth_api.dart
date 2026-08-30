import 'package:animoo/Core/Database/dio_service.dart';
import 'package:dio/dio.dart';

import '../../../../Core/Database/api_consts.dart';

class AuthApi{
  Future signup() async{
    DioService dioService = DioService(Dio());
    Response response = await dioService.post(
        url: ApiConsts.signUpEndpoint,
      body: {}
    );
  }
}