import 'package:flutter/material.dart';

import '../courses/courses_screen.dart';
import '../questions/question_screen.dart';
import '../student_home/student_home_screen.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [buildHeader(context), buildMenuItems(context)]),
        ),
      );
}

Widget buildHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );

Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, StudentHomeScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.class_outlined),
            title: const Text("Student"),
            onTap: () {
              Navigator.pushNamed(context, CoursesScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_2_outlined),
            title: const Text("Teacher"),
            onTap: () {
              Navigator.pushNamed(context, CoursesScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.pushNamed(context, QuestionScreen.routeName);
            },
          ),
        ],
      ),
    );
