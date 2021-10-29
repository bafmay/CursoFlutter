import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

import 'header_item.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverAppBar(
      expandedHeight: size.height * 0.3,
      backgroundColor: Colors.black,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/img/detail_image.jpeg',
          fit: BoxFit.cover,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(34.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "TomorrowLand",
                style: AppStyles.h5(
                  context,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  HeaderItem(
                    icon: Icons.calendar_today,
                    text: "25 - 26 July",
                  ),
                  HeaderItem(
                    icon: Icons.timer_outlined,
                    text: "4pm - 12pm",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_outline),
          onPressed: () {},
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
