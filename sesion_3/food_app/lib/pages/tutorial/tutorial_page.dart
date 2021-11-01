import 'package:flutter/material.dart';
import 'package:food_app/pages/widgets/star_qualification.dart';
import 'package:food_app/theme/apptheme.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: AppTheme.kPrimaryColor,
        ),
        actions: const [
          Icon(
            Icons.more_horiz_outlined,
            color: AppTheme.kPrimaryColor,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [_title(), _detailAndRank()],
      ),
    );
  }

  Widget _title() {
    return ListTile(
      title: const Text(
        "Egg Tacos",
        style: TextStyle(
          fontSize: 20.0,
          color: AppTheme.kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Column(
        children: const [
          Text(
            "6.3M",
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
    );
  }

  Widget _detailAndRank() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 280.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/food_image_2.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: const Icon(
            Icons.play_circle_filled,
            color: Colors.white,
            size: 60.0,
          ),
        ),
        Container(
          width: double.infinity,
          height: 60.0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: AppTheme.kPrimaryColor,
          child: Row(
            children: const [
              StarQualification(
                qualification: 3,
              ),
              Spacer(),
              Text(
                "28K",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 8),
              Icon(Icons.share, color: Colors.white),
            ],
          ),
        )
      ],
    );
  }
}
