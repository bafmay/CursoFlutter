import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellogetx/pages/02-id/contadorid_controller.dart';

class ContadorIdPage extends StatelessWidget {
  const ContadorIdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorIdController>(
      init: ContadorIdController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Contador GETX"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                GetBuilder<ContadorIdController>(
                  id: "contador",
                  builder: (__) {
                    return Text(
                      '${_.counter}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
