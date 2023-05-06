import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/components/bottom_navigation_bar_main.dart';
import '../../../enums.dart';
import '../components/navigator_main.dart';
import './components/body.dart';

class CoursesScreen extends StatelessWidget {
  static String routeName = "/courses";
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Latest Courses")),
      body: const Body(),
      drawer: const NavigatorMain(),
      bottomNavigationBar: const BottomNavigationBarMain(
        selectedMenu: MenuState.classes,
      ),
    );
  }
}
