import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: const Color(0xFF646464),
          borderRadius: BorderRadius.circular(20.0)),
      child: ListTile(
        title: Text(
          "Search..",
          style: AppStyles.body1(context),
        ),
        trailing: const Icon(Icons.filter_alt, color: Colors.white),
        leading: const Icon(Icons.search, color: Colors.white),
      ),
    );
  }
}
