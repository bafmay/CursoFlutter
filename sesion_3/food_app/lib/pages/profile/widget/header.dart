import 'package:flutter/material.dart';
import 'package:food_app/theme/apptheme.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppTheme.kSubColor,
      padding: const EdgeInsets.only(top: 60, right: 16, left: 16, bottom: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(Icons.more_horiz, color: AppTheme.kPrimaryColor),
            ],
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/236x/68/8a/50/688a503bc9eb65a7d32f5151340b9fd1.jpg"),
              ),
              const SizedBox(width: 16),
              Column(
                children: [
                  const Text(
                    "Nombre de persona",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      setProfileStatItem("21", "following"),
                      const SizedBox(width: 16),
                      setProfileStatItem("1211", "followers"),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget setProfileStatItem(String title, String description) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
