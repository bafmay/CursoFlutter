import 'package:flutter/material.dart';

import 'star_qualification.dart';

class PopularItem extends StatelessWidget {
  final String title, description, path, cooked;
  final int qualification;

  const PopularItem(
      {Key? key,
      required this.title,
      required this.description,
      required this.path,
      required this.cooked,
      required this.qualification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            description,
            style: const TextStyle(
              fontSize: 12.0,
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          StarQualification(
            qualification: qualification,
          )
        ],
      ),
      leading: Container(
        width: 60,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(
            image: AssetImage(path),
            fit: BoxFit.cover,
          ),
        ),
      ),
      trailing: Column(
        children: [
          Text(
            cooked,
            style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black45,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "Cooked",
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.black45,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
