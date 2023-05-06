import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import '../home_screen/home_screen.dart';
import '../student_home/student_home_screen.dart';

class CostumBottomNavbar extends StatelessWidget {
  const CostumBottomNavbar({
    super.key,
    required this.selectedMenu,
  });
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xffb6b6b6);
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
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Colors.grey.withOpacity(0.15))
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: Icon(
                Icons.book,
                color: MenuState.classes == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
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
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: Icon(
                Icons.settings,
                color: MenuState.settings == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
              )),
        ],
      )),
    );
  }
}
