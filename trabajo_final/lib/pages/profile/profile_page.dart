import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'widget/profile_body.dart';
import 'widget/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF202630),
      body: CustomScrollView(
        slivers: [
          ProfileHeader(),
          ProfileBody(),
        ],
      ),
    );
  }
}
