import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/home/home_page.dart';
import 'package:trabajo_final/theme/app_styles.dart';
import 'package:trabajo_final/widgets/button.dart';

import 'social_media_login.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: AppStyles.body1(context),
          keyboardType: TextInputType.emailAddress,
          decoration: AppStyles.whiteInputDecoration(
            label: "Email ID*",
            icon: Icons.mail,
          ),
        ),
        TextFormField(
          style: AppStyles.body1(context),
          keyboardType: TextInputType.emailAddress,
          decoration: AppStyles.whiteInputDecoration(
            label: "Password*",
            icon: Icons.remove_red_eye,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: AppStyles.body1(context)?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        TFButton(
          text: "SIGN IN",
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        ),
        const SizedBox(height: 32),
        const SocialMediaLogin(),
      ],
    );
  }
}
