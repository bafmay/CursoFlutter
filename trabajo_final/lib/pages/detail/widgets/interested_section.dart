import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class InterestedSection extends StatelessWidget {
  const InterestedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              const CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                backgroundColor: Colors.transparent,
              ),
              const Positioned(
                left: 30.0,
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              const Positioned(
                left: 60.0,
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              const Positioned(
                left: 90.0,
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              Positioned(
                left: 120.0,
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white,
                  child: Text(
                    "15+",
                    style: AppStyles.body1(
                      context,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
