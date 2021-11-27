import 'package:app_hoteles/app/core/config/config.dart';
import 'package:app_hoteles/app/data/models/request_token.dart';
import 'package:dio/dio.dart';

class AuthProvider {
  Future<RequestToken> auth({
    required String email,
    required String password,
  }) async {
    final _dio = Dio();
    final _response = await _dio.post(
      baseUrl + "/api/user/auth",
      data: {
        "email": email,
        "password": password,
      },
    );

    return RequestToken.fromJson(_response.data);
  }
}
