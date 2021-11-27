import 'dart:convert';

import 'package:app_hoteles/app/core/config/config.dart';
import 'package:app_hoteles/app/data/models/user_model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  Future<String> insertUser({required UserModel userModel}) async {
    final _dio = Dio();
    final _response = await _dio.post(
      "$baseUrl/api/user/register",
      data: json.encode(userModel.toJson()),
    );

    return _response.data["message"];
  }

  Future<UserModel> getInformation(
      {required String token, required int userId}) async {
    final _dio = Dio();
    print(token);
    print(userId);
    final _response = await _dio.post(
      "$baseUrl/api/user/information/$userId",
      options: Options(headers: {"auth": token}),
    );

    return (_response.data["information"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList()
        .first;
  }
}
