import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/home/model/category.dart';
import 'package:trabajo_final/theme/app_styles.dart';
import 'package:trabajo_final/utils/mock_data.dart';

import 'category_item.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "CATEGORIES",
            style: AppStyles.body2(
              context,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 70.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: MockData.getCategories().length,
            itemBuilder: (context, index) {
              Category item = MockData.getCategories()[index];
              return CategoryItem(
                title: item.title,
                subtitle: item.subtitle,
                iconBackgroundColor: item.iconBackgroundColor,
                icon: item.icon,
              );
            },
          ),
        ),
      ],
    );
  }
}
