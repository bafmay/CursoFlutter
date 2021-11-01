import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class EventOfTheYear extends StatelessWidget {
  const EventOfTheYear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "EVENT OF THE YEAR",
            style: AppStyles.body2(
              context,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  image: AssetImage('assets/img/curso.png'), fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
