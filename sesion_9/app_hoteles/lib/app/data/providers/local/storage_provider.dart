import 'dart:convert';

import 'package:app_hoteles/app/core/config/config.dart';
import 'package:app_hoteles/app/data/models/request_token.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class StorageProvider {
  final _storage = Get.put(const FlutterSecureStorage());

  Future<void> setSession({required RequestToken requestToken}) async {
    await _storage.write(
        key: kKeyAuth, value: jsonEncode(requestToken.toJson()));
  }

  Future<RequestToken> getSession() async {
    String keyAuth = await _storage.read(key: kKeyAuth) ?? "";
    return RequestToken.fromJson(jsonDecode(keyAuth));
  }
}
