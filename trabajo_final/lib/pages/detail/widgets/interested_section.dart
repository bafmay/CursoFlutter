import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class InterestedSection extends StatelessWidget {
  final double radius;
  const InterestedSection({Key? key, this.radius = 20.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          CircleAvatar(
            radius: radius,
            backgroundImage: const NetworkImage(
                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
            backgroundColor: Colors.transparent,
          ),
          Positioned(
            left: radius * 1.5,
            child: CircleAvatar(
              radius: radius,
              backgroundImage: const NetworkImage(
                  "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              backgroundColor: Colors.transparent,
            ),
          ),
          Positioned(
            left: radius * 2.6,
            child: CircleAvatar(
              radius: radius,
              backgroundImage: const NetworkImage(
                  "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              backgroundColor: Colors.transparent,
            ),
          ),
          Positioned(
            left: radius * 3.7,
            child: CircleAvatar(
              radius: radius,
              backgroundImage: const NetworkImage(
                  "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              backgroundColor: Colors.transparent,
            ),
          ),
          Positioned(
            left: radius * 4.8,
            child: CircleAvatar(
              radius: radius,
              backgroundColor: Colors.white,
              child: Text(
                "15",
                style: radius >= 20
                    ? AppStyles.body1(context,
                        style: const TextStyle(color: Colors.black))
                    : AppStyles.caption(
                        context,
                        style: const TextStyle(color: Colors.black),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
