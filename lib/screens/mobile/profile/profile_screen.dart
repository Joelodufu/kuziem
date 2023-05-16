import 'package:flutter/material.dart';
import '../../../enums.dart';
import '../components/costum_nav_bar.dart';
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
      bottomNavigationBar: const CostumBottomNavbar(
        selectedMenu: MenuState.settings,
      ),
    );
  }
}
