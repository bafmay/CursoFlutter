import 'package:flutter/material.dart';
import 'package:tarea/theme/app_theme.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.arrow_back_ios, color: AppTheme.kPrimaryColor),
              Icon(Icons.more_horiz, color: AppTheme.kPrimaryColor),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            "Search",
            style: TextStyle(
              color: AppTheme.kPrimaryColor,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(width: 8),
                Flexible(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                    ),
                  ),
                ),
                const Icon(Icons.mic, color: Colors.grey),
              ],
            ),
          )
        ],
      ),
    );
  }
}
