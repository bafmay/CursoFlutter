import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellogetx/pages/04-users/users_controller.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: UserController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Users"),
          ),
          body: GetBuilder<UserController>(
            id: "users",
            builder: (__) {
              return ListView.builder(
                itemCount: _.users.length,
                itemBuilder: (context, index) {
                  final user = _.users[index];
                  return ListTile(
                    onTap: () => _.goToProfile(user: user),
                    title: Text("${user.firstName} ${user.lastName}"),
                    subtitle: Text("${user.email}"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage("${user.avatar}"),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
