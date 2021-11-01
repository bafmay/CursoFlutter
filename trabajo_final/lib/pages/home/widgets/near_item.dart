import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/detail/detail_page.dart';
import 'package:trabajo_final/pages/home/model/event.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class NearItem extends StatelessWidget {
  final Event event;

  const NearItem({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(event.path),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 200,
        height: 120,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(left: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: Text(
                    event.date,
                    style: AppStyles.caption(
                      context,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.type,
                  style: AppStyles.caption(context),
                ),
                const SizedBox(height: 4),
                Text(
                  event.title,
                  style: AppStyles.body2(
                    context,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
