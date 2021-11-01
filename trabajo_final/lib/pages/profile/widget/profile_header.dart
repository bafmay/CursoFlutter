import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xFF171F28),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Profile",
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: const [
        Icon(
          Icons.more_horiz,
          color: Colors.white,
        ),
        SizedBox(width: 16.0),
      ],
    );
  }
}
