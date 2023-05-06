import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/screens/mobile/home_screen/home_screen.dart';
import 'package:kuziem/screens/mobile/student_home/student_home_screen.dart';
import '../../../enums.dart';
import '../components/costum_nav_bar.dart';
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
      bottomNavigationBar: CostumBottomNavbar(
        selectedMenu: MenuState.classes,
      ),
    );
  }
}
