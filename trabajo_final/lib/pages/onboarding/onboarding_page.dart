import 'package:flutter/material.dart';
import 'package:trabajo_final/pages/onboarding/model/onboarding.dart';

import 'widget/onboarding_item.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: controller,
        children: [
          OnBoardingItem(
            item: OnBoarding(
                "Choose the venue for the event",
                "and be sure that it fits the tone and theme of the event",
                'assets/img/event4.jpg'),
            selectedIndex: 0,
            onNext: () {
              controller.jumpToPage(1);
            },
          ),
          OnBoardingItem(
            item: OnBoarding(
                "Invite your guest",
                "and get notified when they accept the invitation.",
                'assets/img/event2.jpg'),
            selectedIndex: 1,
            onNext: () {
              controller.jumpToPage(2);
            },
          ),
          OnBoardingItem(
            item: OnBoarding(
                "Split the check",
                "everyone commits by paying their fair share",
                'assets/img/event3.jpg'),
            selectedIndex: 2,
            onNext: () {
              controller.jumpToPage(0);
            },
          ),
        ],
      ),
    );
  }
}
