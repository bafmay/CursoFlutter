import 'package:app_hoteles/app/modules/home/home_binding.dart';
import 'package:app_hoteles/app/modules/home/home_page.dart';
import 'package:app_hoteles/app/modules/login/login_binding.dart';
import 'package:app_hoteles/app/modules/login/login_page.dart';
import 'package:app_hoteles/app/modules/splash/splash_binding.dart';
import 'package:app_hoteles/app/modules/splash/splash_page.dart';
import 'package:app_hoteles/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
