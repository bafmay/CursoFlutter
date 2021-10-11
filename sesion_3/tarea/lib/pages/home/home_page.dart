import 'package:flutter/material.dart';

import 'widgets/most_liked.dart';
import 'widgets/popular_recipes.dart';
import 'widgets/search_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
//padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchHeader(),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: const [
                  MostLikedRecipes(),
                  PopularRecipes(),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
