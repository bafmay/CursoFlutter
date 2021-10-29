import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class HeaderItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const HeaderItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 16,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: AppStyles.body1(context),
        )
      ],
    );
  }
}
