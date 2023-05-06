import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/components/bottom_navigation_bar_main.dart';

import '../../../enums.dart';
import '../components/navigator_main.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const NavigatorMain(),
      body: Body(),
      bottomNavigationBar: const BottomNavigationBarMain(
        selectedMenu: MenuState.classes,
      ),
    );
  }
}
