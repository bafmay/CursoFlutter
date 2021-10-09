import 'package:flutter/material.dart';
import 'package:tarea_sesion_2/widgets/action_button.dart';

class HomeActionItems extends StatelessWidget {
  const HomeActionItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ActionButton(
          text: "CALL",
          color: Color(0xFF5E97E0),
          icon: Icons.call,
        ),
        ActionButton(
          text: "ROUTE",
          color: Color(0xFF5E97E0),
          icon: Icons.navigation_sharp,
        ),
        ActionButton(
          text: "SHARE",
          color: Color(0xFF5E97E0),
          icon: Icons.share,
        ),
      ],
    );
  }
}
