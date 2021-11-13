import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellogetx/pages/06-reactivos/reactive_controller.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Reactive Page"),
            actions: [
              // Obx(() => CircleAvatar(
              //       backgroundColor: Colors.white,
              //       child: Text("${_.counter.value}"),
              //     )),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Obx(() => Text("${_.counter.value}")),
              ),
              const SizedBox(width: 16),
            ],
          ),
          body: Obx(
            () {
              return _.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: _.users.length,
                      itemBuilder: (context, index) {
                        final user = _.users[index];
                        return ListTile(
                            onTap: () => {_.onFavorite(index)},
                            title: Text("${user.firstName} ${user.lastName}"),
                            subtitle: Text("${user.email}"),
                            leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage("${user.avatar}"),
                            ),
                            trailing: Obx(
                              () => user.isFavorite.value
                                  ? const Icon(Icons.favorite,
                                      color: Colors.pink)
                                  : const Icon(Icons.favorite_outline),
                            ));
                      },
                    );
            },
          ),
        );
      },
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return GetBuilder<ReactiveController>(
  //     init: ReactiveController(),
  //     builder: (_) {
  //       return Scaffold(
  //         appBar: AppBar(
  //           title: Text("Reactive Page"),
  //         ),
  //         body: Center(
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: <Widget>[
  //               const Text(
  //                 'You have pushed the button this many times:',
  //               ),
  //               Obx(() {
  //                 return Text(
  //                   '${_.counter}',
  //                   style: Theme.of(context).textTheme.headline4,
  //                 );
  //               }),
  //             ],
  //           ),
  //         ),
  //         floatingActionButton: Row(
  //           mainAxisAlignment: MainAxisAlignment.end,
  //           children: [
  //             FloatingActionButton(
  //               onPressed: () => _.decrement(),
  //               tooltip: 'Decrement',
  //               child: const Icon(Icons.remove),
  //             ),
  //             const SizedBox(width: 8),
  //             FloatingActionButton(
  //               onPressed: () => _.increment(),
  //               tooltip: 'Increment',
  //               child: const Icon(Icons.add),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}
