import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:trabajo_final/pages/home/provider/bottom_nav_provider.dart';
import 'package:trabajo_final/utils/mock_data.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavProvider>(context, listen: false);
    return ValueListenableBuilder<bool>(
      valueListenable: provider.show,
      builder: (_, value, __) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          left: 0,
          right: 0,
          bottom: value ? 0 : -kBottomNavigationBarHeight * 1.25,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: kToolbarHeight,
              decoration: BoxDecoration(
                color: const Color(0xFF181F27),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ValueListenableBuilder<int>(
                  valueListenable: provider.index,
                  builder: (_, value, __) {
                    return Row(
                      children: List.generate(itemsNavBar.length, (index) {
                        if (index == 2) {
                          return Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: GestureDetector(
                                  onTap: () => provider.setIndex(index),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    alignment: Alignment.center,
                                    child: SvgPicture.asset(
                                      itemsNavBar[index],
                                      color: Colors.white,
                                      width: 15,
                                    ),
                                  ),
                                ),
                              ),
                              flex: 2);
                        } else {
                          return Expanded(
                              child: GestureDetector(
                                onTap: () => provider.setIndex(index),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      itemsNavBar[index],
                                      width: 25,
                                      color: value == index
                                          ? Colors.white
                                          : Colors.white54,
                                    ),
                                    if (value == index)
                                      const CircleAvatar(
                                        radius: 2.5,
                                        backgroundColor: Colors.blue,
                                      )
                                  ],
                                ),
                              ),
                              flex: 1);
                        }
                      }),
                    );
                  }),
            ),
          ),
        );
      },
    );
  }
}
