import 'package:flutter/material.dart';

class ProfileTitle extends StatelessWidget {
  final String title;
  final String description;
  const ProfileTitle({Key? key, required this.title, this.description = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          description != ""
              ? Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
