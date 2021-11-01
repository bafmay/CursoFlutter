import 'package:flutter/material.dart';

class Category {
  String title;
  String subtitle;
  Color backgroundColor;
  Color iconBackgroundColor;
  Widget icon;

  Category(
    this.title,
    this.subtitle,
    this.backgroundColor,
    this.iconBackgroundColor,
    this.icon,
  );
}
