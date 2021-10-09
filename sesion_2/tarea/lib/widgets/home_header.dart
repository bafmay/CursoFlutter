import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Lorem Ipsum is simply dummy text",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Is not simply random text"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Row(
            children: const [
              Icon(
                Icons.star,
                color: Color(0xFFDD7A57),
              ),
              Text("24"),
            ],
          ),
        ),
      ],
    );
  }
}
