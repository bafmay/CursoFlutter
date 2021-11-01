import 'package:flutter/material.dart';
import 'package:food_app/theme/apptheme.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Cheese",
      "Steak",
      "Spaguetti",
      "Others",
      "Cheese",
      "Steak",
      "Spaguetti",
      "Others",
      "Cheese",
      "Steak",
      "Spaguetti",
      "Others"
    ];
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppTheme.kPrimaryColor,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              categories[index],
              style: const TextStyle(color: AppTheme.kPrimaryColor),
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
