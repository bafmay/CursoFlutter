import 'dart:async';
import 'package:faker/faker.dart';

import 'package:get/get.dart';

class SocketController extends GetxController {
  RxString message = RxString("");
  Timer? _timer;
  Faker faker = new Faker();

  @override
  void onInit() {
    _loadInfo();
    super.onInit();
  }

  _loadInfo() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      message.value = faker.lorem.sentence();
    });
  }
}
