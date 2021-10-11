import 'package:flutter/material.dart';
import 'package:tarea/pages/home/widgets/most_liked_item.dart';

class MostLikedRecipes extends StatelessWidget {
  const MostLikedRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            "Most Liked Recipes",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          height: 220,
          padding: const EdgeInsets.only(left: 16),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              MostLikedItem(
                name: "Aji de Gallina",
                qualification: 3,
                path: 'assets/food_5.jpeg',
              ),
              SizedBox(width: 16),
              MostLikedItem(
                name: "Arroz con pollo",
                qualification: 5,
                path: 'assets/food_6.jpeg',
              ),
              SizedBox(width: 16),
              MostLikedItem(
                name: "Carapulcra",
                qualification: 2,
                path: 'assets/food_7.jpeg',
              ),
              SizedBox(width: 16),
            ],
          ),
        )
      ],
    );
  }
}
