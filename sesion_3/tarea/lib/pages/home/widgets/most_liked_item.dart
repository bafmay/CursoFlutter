import 'package:flutter/material.dart';

import 'star_qualification.dart';

class MostLikedItem extends StatelessWidget {
  final String name;
  final int qualification;
  final String path;
  const MostLikedItem({
    Key? key,
    required this.name,
    required this.qualification,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              width: 150,
              height: 150,
              image: AssetImage(path),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(name),
          StarQualification(qualification: qualification),
        ],
      ),
    );
  }
}
