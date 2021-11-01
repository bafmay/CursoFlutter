import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';
import 'profile_options.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const SizedBox(height: 32),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.network(
                "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                fit: BoxFit.cover,
                width: 100.0,
                height: 100.0,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Erick Gustavo",
            textAlign: TextAlign.center,
            style: AppStyles.h6(
              context,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "@Dr.Flutter",
            textAlign: TextAlign.center,
            style: AppStyles.body1(
              context,
              style: const TextStyle(
                color: Colors.white54,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const ProfileOptions()
        ],
      ),
    );
  }
}
