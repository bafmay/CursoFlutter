import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/profile/profile_page.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onProfilePressed() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const ProfilePage(),
          ));
    }

    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      backgroundColor: const Color(0xFF171F28),
      actions: [
        GestureDetector(
          onTap: onProfilePressed,
          child: const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            ),
          ),
        ),
        const SizedBox(width: 8),
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nov 20, 8:25pm",
            style: AppStyles.body1(
              context,
              style: const TextStyle(color: Colors.white54),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Discover Events",
            style: AppStyles.h5(
              context,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
