import 'dart:convert';

import 'package:app_hoteles/app/data/models/request_token.dart';
import 'package:app_hoteles/app/data/repositories/auth_repository.dart';
import 'package:app_hoteles/app/data/repositories/local/storage_repository.dart';
import 'package:app_hoteles/app/global/load_spinner.dart';
import 'package:app_hoteles/app/global/snackbar.dart';
import 'package:app_hoteles/app/routes/app_routes.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final _authRepository = Get.find<AuthRepository>();
  final _storageRepository = Get.find<StorageRepository>();

  String _email = "gqcrispin@gmail.com"; // = "gqcrispin@gmail.com";
  String _password = "123456"; // = "123456";
  RequestToken _onRequestToken = RequestToken();

  void onChangeEmail(String value) => _email = value;
  void onChangePassword(String value) => _password = value;

  doLogin() async {
    LoadSpinner.show();
    try {
      _onRequestToken = await _authRepository.auth(
        email: _email,
        password: _password,
      );
      LoadSpinner.hide();

      if (_onRequestToken.success == true) {
        await _storageRepository.setSession(requestToken: _onRequestToken);
        Get.offNamedUntil(AppRoutes.HOME, (_) => false);
      }
    } on DioError catch (e) {
      LoadSpinner.hide();
      Snackbar.show(
        title: "Error",
        message: e.response?.data["message"],
        type: 1,
      );
    }
  }
}
