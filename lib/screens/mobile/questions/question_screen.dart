import 'package:flutter/material.dart';
import 'package:kuziem/enums.dart';

import '../components/bottom_navigation_bar_main.dart';
import '../components/navigator_main.dart';
import 'components/body.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});
  static String routeName = "/question";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Questions"),
      ),
      body: const Body(),
      drawer: const NavigatorMain(),
      bottomNavigationBar:
          const BottomNavigationBarMain(selectedMenu: MenuState.classes),
    );
  }
}
