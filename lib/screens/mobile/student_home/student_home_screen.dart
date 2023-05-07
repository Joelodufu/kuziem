import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/screens/mobile/student_home/components/body.dart';
import '../../../enums.dart';
import '../components/costum_nav_bar.dart';
import '../components/navigator_main.dart';
import '../questions/question_screen.dart';
import 'components/icon_btn_with_count.dart';

class StudentHomeScreen extends StatelessWidget {
  static String routeName = "/student_home";
  const StudentHomeScreen({super.key});

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
        title: const Text("Home"),
      ),
      body: const Body(),
      drawer: const NavigatorMain(),
      bottomNavigationBar: const CostumBottomNavbar(
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
