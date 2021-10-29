import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/login/widgets/sign_in_form.dart';
import 'package:trabajo_final/pages/login/widgets/sign_up_footer.dart';

import 'package:trabajo_final/theme/app_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            width: double.infinity,
            height: double.infinity,
            image: AssetImage('assets/img/concert.jpg'),
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.10),
                    Text("SIGN IN", style: AppStyles.h6(context)),
                    SizedBox(height: size.height * 0.15),
                    const SignInForm(),
                    SizedBox(height: size.height * 0.15),
                    const SignUpFooter(),
                    SizedBox(height: size.height * 0.03),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
