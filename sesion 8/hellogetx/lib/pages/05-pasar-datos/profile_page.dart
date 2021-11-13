import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellogetx/pages/05-pasar-datos/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Profile User"),
            actions: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  _.user.avatar ?? "",
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
          body: Center(
            child: Text(
              "${_.user.firstName} ${_.user.lastName}",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}
