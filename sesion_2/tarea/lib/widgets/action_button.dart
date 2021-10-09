import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData? icon;
  const ActionButton(
      {Key? key,
      this.color = const Color(0xFF000000),
      required this.text,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(height: 4),
          Text(text, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
