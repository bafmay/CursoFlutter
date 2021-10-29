import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  final int length;
  final int selectedIndex;
  const Dots({
    Key? key,
    required this.length,
    required this.selectedIndex,
  }) : super(key: key);

  List<Widget> getDots() {
    List<Widget> items = [];
    for (var i = 0; i < length; i++) {
      if (i != selectedIndex) {
        items.add(const CircleAvatar(
          backgroundColor: Colors.white54,
          radius: 3,
        ));
      } else {
        items.add(
          Container(
            width: 20,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        );
      }
      items.add(const SizedBox(width: 8.0));
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: getDots(),
    );
  }
}
