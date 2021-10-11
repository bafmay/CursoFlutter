import 'package:flutter/material.dart';
import 'package:tarea/theme/app_theme.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Spacer(),
        Text(
          "Popular Recipes",
          style: TextStyle(
            color: AppTheme.kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: AppTheme.kPrimaryColor,
        ),
        Spacer(),
        Icon(
          Icons.more_horiz,
          color: AppTheme.kPrimaryColor,
        ),
      ],
    );
  }
}
