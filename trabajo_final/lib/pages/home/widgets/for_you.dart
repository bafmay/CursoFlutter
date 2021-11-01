import 'package:flutter/material.dart';
import 'package:trabajo_final/theme/app_styles.dart';

class ForYou extends StatelessWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "FOR YOU",
            style: AppStyles.body2(
              context,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  image: AssetImage('assets/img/tickets.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Claim 4 free tickets!",
                          style: AppStyles.h6(
                            context,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Upgrade your account and\n get 3 tickets instantly",
                          style: AppStyles.body1(context),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.person, color: Colors.white),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Upgrade now",
                            style: AppStyles.caption(
                              context,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
