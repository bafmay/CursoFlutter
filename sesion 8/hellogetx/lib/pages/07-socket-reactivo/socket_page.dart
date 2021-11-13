import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hellogetx/pages/07-socket-reactivo/socket_controller.dart';

class SocketPage extends StatelessWidget {
  const SocketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SocketController>(
      init: SocketController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Socket Page"),
          ),
          body: Center(
            child: Obx(
              () => Text(
                _.message.value,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
