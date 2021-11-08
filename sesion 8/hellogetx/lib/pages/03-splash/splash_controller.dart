import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellogetx/pages/02-id/contadorid_page.dart';
import 'package:hellogetx/pages/04-users/users_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady");
    // Get.dialog(
    //     const AlertDialog(
    //       title: Text("MEnsaje"),
    //       content: FlutterLogo(
    //         size: 200,
    //       ),
    //     ),
    //     barrierDismissible: false,
    //     barrierColor: Colors.red[50]);
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(
        () => const UsersPage(),
        transition: Transition.upToDown,
        duration: const Duration(seconds: 1),
      );
    });
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }
}
