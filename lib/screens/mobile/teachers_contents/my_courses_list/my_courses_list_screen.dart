import 'package:flutter/material.dart';
import './components/body.dart';

import '../../../../enums.dart';
import '../../components/costum_nav_bar.dart';
import '../../components/icon_btn_with_count.dart';
import '../../components/navigator_main.dart';

class MyCoursesListScreen extends StatelessWidget {
  const MyCoursesListScreen({super.key});
  static String routeName = "/my_courses_list";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Courses"),
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
      ),
      body: Body(),
      bottomNavigationBar: const CostumBottomNavbar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
