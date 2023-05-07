import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import '../courses/courses_screen.dart';
import '../settings/settings_screen.dart';
import '../student_home/student_home_screen.dart';

class CostumBottomNavbar extends StatelessWidget {
  const CostumBottomNavbar({
    super.key,
    required this.selectedMenu,
  });
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color.fromARGB(255, 150, 150, 150);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 20,
                color: Colors.grey.withOpacity(0.15))
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CoursesScreen.routeName);
              },
              icon: Icon(
                Icons.book,
                color: MenuState.classes == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
                size: MenuState.classes == selectedMenu ? 20 : 15,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, StudentHomeScreen.routeName);
              },
              icon: Icon(
                Icons.home,
                color: MenuState.home == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
                size: MenuState.home == selectedMenu ? 25 : 20,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SettingsScreen.routeName);
              },
              icon: Icon(
                Icons.settings,
                color: MenuState.settings == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
                size: MenuState.settings == selectedMenu ? 25 : 20,
              )),
        ],
      )),
    );
  }
}
