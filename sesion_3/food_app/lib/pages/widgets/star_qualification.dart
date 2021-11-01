import 'package:flutter/material.dart';

class StarQualification extends StatelessWidget {
  final int qualification;
  const StarQualification({Key? key, this.qualification = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getList(),
    );
  }

  List<Widget> getList() {
    List<Widget> childs = [];
    for (var i = 0; i < 5; i++) {
      childs.add(
        Icon(
          Icons.star,
          size: 18,
          color: i < qualification ? Colors.grey : Colors.grey[300],
        ),
      );
    }
    return childs;
  }
}
