import 'package:flutter/material.dart';
import 'package:kuziem/enums.dart';

import '../components/bottom_navigation_bar_main.dart';
import '../components/costum_nav_bar.dart';
import '../components/navigator_main.dart';
import 'components/body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static String routeName = "/setting";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
        ),
        body: const Body(),
        drawer: const NavigatorMain(),
        bottomNavigationBar: const CostumBottomNavbar(
          selectedMenu: MenuState.settings,
        ));
  }
}
