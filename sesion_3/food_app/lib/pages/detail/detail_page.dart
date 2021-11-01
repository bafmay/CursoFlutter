import 'package:flutter/material.dart';
import 'package:food_app/pages/widgets/popular_item.dart';

import 'widgets/header.dart';
import 'widgets/information.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("SLiverAppBar"),
            //floating: true,
            pinned: true,
            leading: const Icon(Icons.arrow_back_ios),
            expandedHeight: 350.0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/food_image_1.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildListDelegate([
              const DetailHeader(),
              const Information(),
            ]),
            itemExtent: 200,
          )
        ],
      ),
    );
  }
}
