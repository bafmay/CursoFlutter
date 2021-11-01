import 'package:flutter/material.dart';

class AppStyles {
  static InputDecoration whiteInputDecoration({
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      labelText: label,
      labelStyle: const TextStyle(
        color: Colors.white,
      ),
      suffixIcon: Icon(
        icon,
        color: Colors.white,
        size: 15,
      ),
    );
  }

  static TextStyle? h6(BuildContext context, {TextStyle? style}) {
    return Theme.of(context)
        .textTheme
        .headline6
        ?.copyWith(color: Colors.white)
        .merge(style);
  }

  static TextStyle? h5(BuildContext context, {TextStyle? style}) {
    return Theme.of(context)
        .textTheme
        .headline5
        ?.copyWith(color: Colors.white)
        .merge(style);
  }

  static TextStyle? body1(BuildContext context, {TextStyle? style}) {
    return Theme.of(context)
        .textTheme
        .bodyText1
        ?.copyWith(color: Colors.white)
        .merge(style);
  }

  static TextStyle? caption(BuildContext context, {TextStyle? style}) {
    return Theme.of(context)
        .textTheme
        .caption
        ?.copyWith(color: Colors.white)
        .merge(style);
  }

  static TextStyle? body2(BuildContext context, {TextStyle? style}) {
    return Theme.of(context)
        .textTheme
        .bodyText2
        ?.copyWith(color: Colors.white)
        .merge(style);
  }

  static TextStyle? subtitle1(BuildContext context, {TextStyle? style}) {
    return Theme.of(context)
        .textTheme
        .subtitle1
        ?.copyWith(color: Colors.white)
        .merge(style);
  }
}
