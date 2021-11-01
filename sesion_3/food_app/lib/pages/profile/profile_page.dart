import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/pages/profile/widget/favorites.dart';
import 'package:food_app/pages/profile/widget/header.dart';
import 'package:food_app/pages/profile/widget/title.dart';

import 'widget/categories.dart';
import 'widget/photos.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ProfileHeader(),
            ProfileTitle(
              title: "Food photos",
              description: "Show all",
            ),
            ProfilePhotos(),
            ProfileTitle(title: "Favorite Foods"),
            Categories(),
            ProfileTitle(title: "Favorite Recipes"),
            Favorites(),
          ],
        ),
      ),
    );
  }
}
