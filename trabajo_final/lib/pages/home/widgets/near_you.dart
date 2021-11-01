import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';
import 'package:trabajo_final/utils/mock_data.dart';

import 'near_item.dart';

class NearYou extends StatelessWidget {
  const NearYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<NearItem> nearItems =
        MockData.getNearItems().map((e) => NearItem(event: e)).toList();
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "NEAR BY YOU",
              style: AppStyles.body2(
                context,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return nearItems[index];
              },
              itemCount: nearItems.length,
            ),
          )
        ],
      ),
    );
  }
}
