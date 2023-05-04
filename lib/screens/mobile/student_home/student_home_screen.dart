import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/screens/mobile/courses/courses_screen.dart';
import 'package:kuziem/screens/mobile/student_home/components/body.dart';

class StudentHomeScreen extends StatelessWidget {
  static String routeName = "/student_home";
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Body(),
      drawer: NavigationDrawer(),
    );
  }
}

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
      color: kPrimaryColor,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: InkWell(
        onTap: () {},
        child: Container(
          color: kPrimaryColor,
          padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundImage: NetworkImage(
                    "https://www.facebook.com/photo/?fbid=5140395726062009&set=a.255499527885011"),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Joel Odufu",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              Text(
                "joel.odufu@gmail.com",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
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
          Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.pushNamed(context, CoursesScreen.routeName);
            },
          ),
        ],
      ),
    );
