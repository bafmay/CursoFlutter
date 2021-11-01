import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_final/pages/home/provider/bottom_nav_provider.dart';
import 'package:trabajo_final/pages/onboarding/onboarding_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => BottomNavProvider())],
      child: const _MyApp(),
    );
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: const OnBoardingPage(),
    );
  }
}
