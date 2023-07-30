import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:kuziem/helperFunction.dart';
import 'package:kuziem/screens/mobile/settings/settings_screen.dart';
import '../../../constants.dart';
import '../../../services/auth_service.dart';
import '../profile/profile_screen.dart';
import '../student_home/student_home_screen.dart';
import '../teachers_contents/teacher_home/teacher_home_screen.dart';
import 'menu_button.dart';

class NavigatorMain extends StatefulWidget {
  const NavigatorMain({super.key});

  @override
  State<NavigatorMain> createState() => _NavigatorMainState();
}

class _NavigatorMainState extends State<NavigatorMain> {
  AuthService authService = AuthService();
  Uint8List? _image;
  String email = "";
  String userName = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
  }

  void getUserData() async {
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserUserNameFromSF().then((value) {
      setState(() {
        userName = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildHeader(context, email, userName, _image),
                buildMenuItems(context)
              ]),
        ),
      );
}

Widget buildHeader(BuildContext context, String email, String userName,
        Uint8List? _image) =>
    Container(
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
            children: [
              Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  _image != null
                      ? CircleAvatar(
                          backgroundImage: MemoryImage(_image!),
                        )
                      : CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                  Positioned(
                      right: -12,
                      bottom: 0,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 236, 236, 236),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(Icons.edit),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                userName,
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              Text(
                email,
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
            route: StudentHomeScreen.routeName,
          ),
          MenuBotton(
            text: "Teacher",
            icon: Icons.person_2_outlined,
            route: TeacherHomeScreen.routeName,
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
