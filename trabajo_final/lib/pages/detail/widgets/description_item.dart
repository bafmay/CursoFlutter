import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class DescriptionItem extends StatelessWidget {
  const DescriptionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: AppStyles.subtitle1(
            context,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
          style: AppStyles.body1(context),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 32.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: const Image(
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://i0.wp.com/cssscript.com/wp-content/uploads/2018/03/Simple-Location-Picker.png?fit=561%2C421&ssl=1'),
            ),
          ),
        ),
      ],
    );
  }
}
