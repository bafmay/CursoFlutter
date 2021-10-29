import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/login/login_page.dart';
import 'package:trabajo_final/pages/onboarding/model/onboarding.dart';
import 'package:trabajo_final/pages/onboarding/widget/dots.dart';
import 'package:trabajo_final/theme/app_styles.dart';

import 'footer_options.dart';

class OnBoardingItem extends StatelessWidget {
  final int selectedIndex;
  final OnBoarding item;
  final GestureTapCallback onNext;

  const OnBoardingItem({
    Key? key,
    this.selectedIndex = 0,
    required this.item,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    void onSkipPressed() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    }

    return SafeArea(
      child: Column(
        children: [
          Image(
            width: size.width,
            height: size.height * 0.6,
            image: AssetImage(item.imagePath),
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Dots(length: 3, selectedIndex: selectedIndex),
                      const SizedBox(height: 16.0),
                      Text(
                        item.title,
                        style: AppStyles.h6(context),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.15,
                          vertical: 16.0,
                        ),
                        child: Text(
                          item.description,
                          style: AppStyles.body1(
                            context,
                            style: const TextStyle(color: Colors.white54),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  FooterOptions(
                    onSkipNow: onSkipPressed,
                    onNext: onNext,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
