import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:tarea/pages/home/home_page.dart';
import 'package:tarea/pages/popular/widgets/home_header.dart';
import 'package:tarea/pages/popular/widgets/popular_item.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  void navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              const HomeHeader(),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      PopularItem(
                        title: "Friday Night \nFeast",
                        description: "40 Friday meals ideas",
                        path: 'assets/food_1.jpeg',
                        onPress: () => navigateToHome(context),
                      ),
                      const SizedBox(height: 16),
                      PopularItem(
                        title: "Weekend\nBreakfast",
                        description: "20 breakfast ideas",
                        path: 'assets/food_2.jpeg',
                        onPress: () => navigateToHome(context),
                      ),
                      const SizedBox(height: 16),
                      PopularItem(
                        title: "Pasta\nFestival",
                        description: "10 Pastas ideas",
                        path: 'assets/food_3.jpeg',
                        onPress: () => navigateToHome(context),
                      ),
                      const SizedBox(height: 16),
                      PopularItem(
                        title: "Vegetarian\nFood",
                        description: "20 Veggies Snacks",
                        path: 'assets/food_4.jpeg',
                        onPress: () => navigateToHome(context),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
