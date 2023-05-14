import 'package:flutter/material.dart';

import '../../../enums.dart';
import '../components/costum_nav_bar.dart';
import './components/body.dart';

class KuzBotScreen extends StatelessWidget {
  static String routeName = "/kuzbot";

  const KuzBotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Body(),
        bottomNavigationBar: const CostumBottomNavbar(
          selectedMenu: MenuState.home,
        ));
  }
}
