import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/settings/settings_screen.dart';
import '../../../constants.dart';
import '../courses/courses_screen.dart';
import '../profile/profile_screen.dart';
import '../student_home/student_home_screen.dart';
import '../teachers_contents/register_splash/register_splash_screen.dart';
import 'menu_button.dart';

class NavigatorMain extends StatelessWidget {
  const NavigatorMain({super.key});

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
        onTap: () {
          Navigator.pushNamed(context, ProfileScreen.routeName);
        },
        child: Container(
          color: kPrimaryColor,
          padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
          child: Column(
            children: const [
              CircleAvatar(
                  radius: 52,
                  backgroundImage: AssetImage("assets/images/joellee.jpg")),
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
          MenuBotton(
            text: "Home",
            icon: Icons.home,
            route: StudentHomeScreen.routeName,
          ),
          MenuBotton(
            text: "Student",
            icon: Icons.class_outlined,
            route: CoursesScreen.routeName,
          ),
          MenuBotton(
            text: "Teacher",
            icon: Icons.person_2_outlined,
            route: RegisterSplashScreen.routeName,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.pushNamed(context, SettingsScreen.routeName);
            },
          ),
        ],
      ),
    );
