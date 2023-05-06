import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import '../../../enums.dart';
import '../components/bottom_navigation_bar_main.dart';
import '../components/navigator_main.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Body(),
      drawer: const NavigatorMain(),
      bottomNavigationBar: const BottomNavigationBarMain(
        selectedMenu: MenuState.settings,
      ),
    );
  }
}
