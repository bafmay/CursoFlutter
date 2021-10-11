import 'package:flutter/material.dart';
import 'package:food_app/theme/apptheme.dart';

class FeatureTab extends StatelessWidget {
  const FeatureTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          FoodSlider(),
          FoodList(),
        ],
      ),
    );
  }
}

class FoodSlider extends StatelessWidget {
  const FoodSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      width: double.infinity,
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _cardTipo1(
              title: "Toffu Noodle Soup", path: "assets/food_image_3.jpeg"),
          _cardTipo1(
              title: "Toffu Noodle Soup 2", path: "assets/food_image_3.jpeg"),
        ],
      ),
    );
  }

  Widget _cardTipo1({required String title, required String path}) {
    return Container(
      width: 220.0,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 16),
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "World Food",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.amber,
      shadowColor: Colors.amber,
      child: Container(
        width: 220.0,
      ),
    );
  }
}

class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            "Chicken Salad",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Special Diets",
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 17,
                    color: AppTheme.kPrimaryColor,
                  ),
                  Icon(
                    Icons.star,
                    size: 17,
                    color: AppTheme.kPrimaryColor,
                  ),
                  Icon(
                    Icons.star,
                    size: 17,
                    color: AppTheme.kPrimaryColor,
                  ),
                  Icon(
                    Icons.star_border,
                    size: 17,
                    color: AppTheme.kPrimaryColor,
                  )
                ],
              )
            ],
          ),
          leading: Container(
            width: 60,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5.0),
              image: const DecorationImage(
                  image: AssetImage('assets/food_image_1.jpeg'),
                  fit: BoxFit.cover),
            ),
          ),
          trailing: Column(
            children: const [
              Text(
                "6.2K",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Cooked",
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }
}
