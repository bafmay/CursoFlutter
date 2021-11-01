import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        "Egg Benedict",
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "MasterCheff",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      trailing: Column(
        children: const [
          Text(
            "6.2M",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black45,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Cooked",
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.black45,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
