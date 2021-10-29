import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class SocialMediaLogin extends StatelessWidget {
  const SocialMediaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Or Connected with",
              style: AppStyles.body1(context),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage('assets/icons/facebook.png'),
              width: 32,
              height: 32,
            ),
            SizedBox(width: 32.0),
            Image(
              image: AssetImage('assets/icons/google.png'),
              width: 32,
              height: 32,
            ),
            SizedBox(width: 32.0),
            Image(
              image: AssetImage('assets/icons/twitter.png'),
              width: 32,
              height: 32,
            ),
          ],
        ),
      ],
    );
  }
}
