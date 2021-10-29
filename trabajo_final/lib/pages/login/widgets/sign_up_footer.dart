import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';
import 'package:trabajo_final/theme/app_theme.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: "Don't have an Account? ",
            style: AppStyles.body1(context),
            children: [
              TextSpan(
                text: "Sign up",
                style: AppStyles.body1(context)
                    ?.copyWith(color: AppTheme.buttonPink),
              )
            ],
          ),
        ),
      ],
    );
  }
}
