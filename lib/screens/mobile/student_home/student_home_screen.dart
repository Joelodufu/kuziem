import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/student_home/components/body.dart';
import '../../../enums.dart';
import '../components/bottom_navigation_bar_main.dart';
import '../components/navigator_main.dart';

class StudentHomeScreen extends StatelessWidget {
  static String routeName = "/student_home";
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Body(),
        drawer: const NavigatorMain(),
        bottomNavigationBar: const BottomNavigationBarMain(
          selectedMenu: MenuState.home,
        ));
  }
}
