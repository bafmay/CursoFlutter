import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trabajo_final/pages/detail/widgets/interested_section.dart';
import 'package:trabajo_final/pages/home/model/recommend.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class RecommendedItem extends StatelessWidget {
  final Recommend item;
  const RecommendedItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: const Color(0xFF1F1F1F),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    width: 220,
                    height: 150,
                    image: AssetImage(item.path),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.date,
                        style: AppStyles.caption(context),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        item.title,
                        style: AppStyles.body1(
                          context,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Row(
                        children: [
                          Text(
                            "${item.joinned} joined",
                            style: AppStyles.caption(context),
                          ),
                          const SizedBox(width: 16),
                          const InterestedSection(radius: 10.0),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Join now - S/ ${item.price}",
                              style: AppStyles.body1(context),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
