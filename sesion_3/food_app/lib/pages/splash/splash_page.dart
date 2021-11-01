import 'package:flutter/material.dart';
import 'package:food_app/pages/login/login_page.dart';
import 'package:food_app/theme/apptheme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/food_image_2.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Text(
                "Good food",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Delicious Simple.",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, _, __) {
                        return const LoginPage();
                      },
                      transitionsBuilder: (_, animation, __, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      transitionDuration: const Duration(milliseconds: 800),
                    ),
                  )
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const LoginPage(),
                  //   ),
                  // )
                },
                child: Container(
                  width: 300,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppTheme.kPrimaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Start cooking",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       children: [
//         Container(
//           color: Colors.red,
//         ),
//         Align(
//           alignment: Alignment.centerRight,
//           child: Container(
//             width: 300,
//             height: 300,
//             color: Colors.green,
//           ),
//         ),
//         Positioned(
//           top: 40,
//           child: Container(
//             width: 150,
//             height: 150,
//             color: Colors.pink,
//           ),
//         )
//       ],
//     ));
//   }