import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';
import 'package:trabajo_final/widgets/button.dart';

import 'description_item.dart';
import 'interested_section.dart';

class DetailSection extends StatelessWidget {
  const DetailSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DescriptionItem(),
              const SizedBox(height: 32.0),
              Text(
                "Interested",
                style: AppStyles.subtitle1(
                  context,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 12.0),
              Row(children: const [InterestedSection()]),
              const SizedBox(height: 32.0),
              TFButton(
                text: "Buy Ticket \$272",
                backgroundColor: const Color(0xFF896CCE),
                onPressed: () {},
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ]),
    );
  }
}
