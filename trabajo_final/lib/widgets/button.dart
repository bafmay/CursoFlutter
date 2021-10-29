import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';
import 'package:trabajo_final/theme/app_theme.dart';

class TFButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final GestureTapCallback? onPressed;

  const TFButton({
    Key? key,
    this.backgroundColor = AppTheme.buttonPink,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppStyles.body1(context),
        ),
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );

// ElevatedButton(
//         onPressed: onPressed,
//         child: Text(
//           text,
//           style: AppStyles.body1(context),
//         ),
//         style: ElevatedButton.styleFrom(
//           primary: Colors.purple,
//           padding: const EdgeInsets.symmetric(vertical: 16.0),
//           textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.0),
//           ),
//         ),
//       ),

    // return GestureDetector(
    //   onTap: onPressed,
    //   child: Container(
    //     width: double.infinity,
    //     padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    //     decoration: BoxDecoration(
    //       color: backgroundColor,
    //       borderRadius: BorderRadius.circular(20.0),
    //     ),
    //     child: Center(
    //       child: Text(
    //         text,
    //         style: AppStyles.body1(context),
    //       ),
    //     ),
    //   ),
    // );
  }
}
