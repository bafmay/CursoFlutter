import 'package:flutter/material.dart';
import 'package:food_app/pages/widgets/popular_item.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> foods = ["Chicked Salad", "Vegetables"];
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 15,
      itemBuilder: (context, index) {
        return const PopularItem(
          title: "holi",
          description: "que tla",
          path: "assets/food_image_1.jpeg",
          cooked: "5.1M",
          qualification: 3,
        );
      },
    );
  }
}
