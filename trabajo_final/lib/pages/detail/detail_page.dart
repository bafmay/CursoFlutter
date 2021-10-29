import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trabajo_final/pages/detail/widgets/header.dart';
import 'widgets/detail_section.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          DetailHeader(),
          DetailSection(),
        ],
      ),
    );
  }
}
