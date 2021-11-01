import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class DetailItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const DetailItem({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.subtitle1(context,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Text(
          subtitle,
          style: AppStyles.caption(
            context,
            style: const TextStyle(
              color: Colors.white54,
            ),
          ),
        ),
      ],
    );
  }
}
