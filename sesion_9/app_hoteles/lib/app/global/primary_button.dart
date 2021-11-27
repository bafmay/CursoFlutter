import 'package:app_hoteles/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function() onPressed;
  final String texto;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: AppTheme.blueDark,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 60.0,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            texto,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
