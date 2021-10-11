import 'package:flutter/material.dart';
import 'package:tarea/pages/home/widgets/popular_item.dart';

class PopularRecipes extends StatelessWidget {
  const PopularRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Popular Recipes",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: const [
            PopularItem(
              title: "Tallarin rojo",
              description: "Pastas",
              path: 'assets/food_8.jpeg',
              cooked: "1.8M",
              qualification: 5,
            ),
            SizedBox(height: 8),
            PopularItem(
              title: "Tallarin verde",
              description: "Pastas",
              path: 'assets/food_9.jpeg',
              cooked: "340K",
              qualification: 3,
            ),
            SizedBox(height: 8),
            PopularItem(
              title: "Cebiche",
              description: "Marino",
              path: 'assets/food_10.jpeg',
              cooked: "3.2M",
              qualification: 2,
            ),
            SizedBox(height: 8),
            PopularItem(
              title: "Lomo saltado",
              description: "Tipico",
              path: 'assets/food_11.jpeg',
              cooked: "932K",
              qualification: 4,
            ),
            SizedBox(height: 8),
            PopularItem(
              title: "Pollo a la Brasa",
              description: "Tipico",
              path: 'assets/food_12.jpeg',
              cooked: "2,1M",
              qualification: 5,
            ),
            SizedBox(height: 8),
          ],
        )
      ],
    );
  }
}
