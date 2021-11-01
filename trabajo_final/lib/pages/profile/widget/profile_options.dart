import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/profile/model/profile_model.dart';
import 'package:trabajo_final/theme/app_styles.dart';
import 'package:trabajo_final/utils/mock_data.dart';

import 'detail_item.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              height: 10,
              thickness: 1,
              color: Colors.white38,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                DetailItem(title: "13", subtitle: "events"),
                DetailItem(title: "5", subtitle: "following"),
                DetailItem(title: "4", subtitle: "followers"),
              ],
            ),
            const SizedBox(height: 24),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: profileItems.length,
                itemBuilder: (context, index) {
                  ProfileModel item = profileItems[index];
                  return OptionItem(item: item);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OptionItem extends StatelessWidget {
  const OptionItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ProfileModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF171F28),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ListTile(
            title: Text(
              item.title,
              style: AppStyles.body1(context),
            ),
            leading: OptionIcon(icon: item.icon),
            trailing: const OptionIcon(
              icon: Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class OptionIcon extends StatelessWidget {
  const OptionIcon({Key? key, required this.icon, this.size = 25.0})
      : super(key: key);

  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF202630),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Icon(icon, color: Colors.white, size: size),
    );
  }
}
