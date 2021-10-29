import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class FooterOptions extends StatelessWidget {
  final GestureTapCallback onSkipNow;
  final GestureTapCallback onNext;
  const FooterOptions({
    Key? key,
    required this.onSkipNow,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onSkipNow,
            child: Text(
              "Skip Now",
              style: AppStyles.body1(context),
            ),
          ),
          IconButton(
            color: Colors.white,
            icon: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 15.0,
              ),
            ),
            onPressed: onNext,
          ),
        ],
      ),
    );
  }
}
