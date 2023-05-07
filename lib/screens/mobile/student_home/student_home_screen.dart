import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/screens/mobile/student_home/components/body.dart';
import '../../../enums.dart';
import '../components/bottom_navigation_bar_main.dart';
import '../components/costum_nav_bar.dart';
import '../components/navigator_main.dart';
import '../questions/question_screen.dart';

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
      bottomNavigationBar: CostumBottomNavbar(
        selectedMenu: MenuState.home,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          Navigator.pushNamed(context, QuestionScreen.routeName);
        },
        child: Icon(
          Icons.question_mark,
        ),
      ),
    );
  }
}
