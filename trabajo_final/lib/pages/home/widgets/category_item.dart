import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final Widget icon;
  const CategoryItem({
    Key? key,
    required this.title,
    this.subtitle = "",
    this.backgroundColor = Colors.white,
    this.iconBackgroundColor = Colors.red,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16.0),
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          height: 50,
          child: Row(
            children: [
              Container(
                constraints: const BoxConstraints(
                  minWidth: 0,
                  maxWidth: 200,
                ),
                decoration: BoxDecoration(
                  color: iconBackgroundColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8.0),
                child: icon,
              ),
              const SizedBox(width: 8.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyles.body2(
                      context,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: AppStyles.caption(
                      context,
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8.0),
            ],
          ),
        ),
      ],
    );
  }
}
