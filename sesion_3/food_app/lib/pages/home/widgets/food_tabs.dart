import 'package:flutter/material.dart';
import 'package:food_app/pages/home/widgets/tab_feature.dart';
import 'package:food_app/pages/home/widgets/tab_new.dart';
import 'package:food_app/pages/home/widgets/tab_popular.dart';

class FoodTabs extends StatelessWidget {
  const FoodTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const TabBar(
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black54,
            tabs: [
              Tab(text: "Feature"),
              Tab(text: "Popular"),
              Tab(text: "New"),
            ],
          ),
          Container(
            height: 400,
            decoration: const BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.grey, width: 0.5),
            )),
            child: const TabBarView(
              children: [
                FeatureTab(),
                PopularTab(),
                NewTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
