import 'package:app_hoteles/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    _goToLogin();
    super.onReady();
  }

  _goToLogin() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () => Get.offNamed(AppRoutes.LOGIN),
    );
  }
}
