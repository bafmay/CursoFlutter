import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/home/model/recommend.dart';
import 'package:trabajo_final/pages/home/widgets/recommended_item.dart';
import 'package:trabajo_final/theme/app_styles.dart';
import 'package:trabajo_final/utils/mock_data.dart';

class Recomended extends StatelessWidget {
  const Recomended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Recommend> nearItems = MockData.getRecommend();
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "EVENTS FOR YOU",
              style: AppStyles.body2(
                context,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return RecommendedItem(item: nearItems[index]);
              },
              itemCount: nearItems.length,
            ),
          )
        ],
      ),
    );
  }
}
