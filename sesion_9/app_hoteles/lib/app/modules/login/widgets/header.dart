import 'package:app_hoteles/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/icons/find_home.svg"),
          RichText(
            text: TextSpan(
              text: "Find",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: AppTheme.blueDark, fontWeight: FontWeight.w900),
              children: [
                TextSpan(
                  text: "Home",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
