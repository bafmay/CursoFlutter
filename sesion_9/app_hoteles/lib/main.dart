import 'package:app_hoteles/app/core/utils/dependecy_injection.dart';
import 'package:app_hoteles/app/modules/splash/splash_page.dart';
import 'package:app_hoteles/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  DependencyInjection.load();
  Map<String, dynamic> values = {"auth": "fkdjfkdjkfdd"};
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: "/", //POR DEFAULT
      getPages: AppPages.pages,
    );
  }
}
