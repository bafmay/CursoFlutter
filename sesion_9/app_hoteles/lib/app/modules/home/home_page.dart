import 'package:app_hoteles/app/core/theme/app_theme.dart';
import 'package:app_hoteles/app/global/button_navigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';
import 'widgets/category.dart';
import 'widgets/header.dart';
import 'widgets/houses.dart';
import 'widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        backgroundColor: AppTheme.background,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomScrollView(
                  slivers: [
                    const Header(),
                    const Search(),
                    const Category(),
                    Houses(),
                  ],
                ),
              ),
              const ButtonNavigator()
            ],
          ),
        ),
      ),
    );
  }
}
