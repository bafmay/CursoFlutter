import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/pages/home/widgets/food_tabs.dart';
import 'package:food_app/pages/home/widgets/home_header.dart';
import 'package:food_app/theme/apptheme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HomeHeader(),
            FoodTabs(),
          ],
        ),
      ),
    );
  }
}
