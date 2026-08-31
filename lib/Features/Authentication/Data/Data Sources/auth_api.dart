import 'package:animoo/Core/Database/api_keys.dart';
import 'package:animoo/Core/Database/dio_service.dart';
import 'package:animoo/Features/Authentication/Data/Models/user_model.dart';
import 'package:dio/dio.dart';

import '../../../../Core/Database/api_consts.dart';
import '../../../../Core/Errors/server_exception.dart';

class AuthApi{
  Future<UserModel> signup({required UserModel user}) async{
    try {
      DioService dioService = DioService(Dio());
      var response = await dioService.post(
          url: ApiConsts.signUpEndpoint,
          body: user.toJson()
      );
      var userData = UserModel.fromJson(response);
      return userData;
    } on ServerException catch (e) {
      rethrow;
    }
  } 


  Future <UserModel>login({required String email, required String password})async{
    try {
      DioService dioService = DioService(Dio());
      var response = await dioService.post(
          url: ApiConsts.logInEndpoint,
          body: {
            ApiKeys.email : email,
            ApiKeys.password : password,
          }
      );
      var userData = UserModel.fromJson(response);
      return userData;
    } on ServerException catch (e) {
      rethrow;
    }

  }

}