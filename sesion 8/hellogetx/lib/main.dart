import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hellogetx/pages/03-splash/splash_page.dart';
import 'package:hellogetx/pages/06-reactivos/reactive_page.dart';

import 'pages/07-socket-reactivo/socket_page.dart';
import 'pages/08-custom-painter/painter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PainterPage(),
    );
  }
}
