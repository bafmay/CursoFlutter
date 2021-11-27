import 'package:app_hoteles/app/core/theme/app_theme.dart';
import 'package:app_hoteles/app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/content.dart';
import 'widgets/header.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        backgroundColor: AppTheme.cyan,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
              child: Column(
                children: const [
                  Header(),
                  Content(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
