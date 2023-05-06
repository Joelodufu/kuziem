import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/student_home/student_home_screen.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import '../courses/courses_screen.dart';
import '../profile/profile_screen.dart';

class BottomNavigationBarMain extends StatelessWidget {
  const BottomNavigationBarMain({
    super.key,
    required this.selectedMenu,
  });
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        index: MenuState.classes == selectedMenu
            ? 0
            : MenuState.home == selectedMenu
                ? 1
                : 2,
        height: 70,
        color: kPrimaryColor,
        animationDuration: const Duration(milliseconds: 200),
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        items: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, CoursesScreen.routeName);
              },
              child: const Icon(
                Icons.book,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, StudentHomeScreen.routeName);
              },
              child: const Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              child: const Icon(
                Icons.settings,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ]);
  }
}
