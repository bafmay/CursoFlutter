import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/pages/detail/detail_page.dart';
import 'package:food_app/pages/home/home_page.dart';
import 'package:food_app/pages/profile/profile_page.dart';
import 'package:food_app/pages/tutorial/tutorial_page.dart';
import 'package:food_app/theme/apptheme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            "assets/food_image_3.jpeg",
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome back to \nGood Food",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: AppTheme.kPrimaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Your email",
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: "Your password",
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        size: 20.0,
                      )),
                ),
                const SizedBox(height: 32),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TutorialPage(),
                      ),
                    )
                  },
                  child: Container(
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                      color: AppTheme.kPrimaryColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () => {},
                  child: Container(
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: AppTheme.kPrimaryColor)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.face, color: AppTheme.kPrimaryColor),
                        SizedBox(width: 8),
                        Text(
                          "Sign up with Facebook",
                          style: TextStyle(
                            color: AppTheme.kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Terms of User ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'and',
                        ),
                        TextSpan(
                            text: ' Privacy Policy',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
