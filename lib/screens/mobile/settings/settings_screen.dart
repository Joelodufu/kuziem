import 'package:flutter/material.dart';
import 'package:kuziem/enums.dart';

import '../components/costum_nav_bar.dart';
import '../components/navigator_main.dart';
import '../student_home/components/icon_btn_with_count.dart';
import 'components/body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static String routeName = "/setting";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButtonWithCount(
                icon: Icons.notification_add,
                press: () {},
                numberOfItems: 10,
              ),
            )
          ],
          title: const Text("Settings"),
        ),
        body: const Body(),
        drawer: const NavigatorMain(),
        bottomNavigationBar: const CostumBottomNavbar(
          selectedMenu: MenuState.settings,
        ));
  }
}
