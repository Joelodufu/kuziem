import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/components/menu_button.dart';
import 'package:kuziem/screens/mobile/home_screen/home_screen.dart';
import 'package:kuziem/screens/mobile/profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePic(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: MenuBotton(
            text: "Home",
            icon: Icons.home_outlined,
            route: HomeScreen.routeName,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: MenuBotton(
            text: "Notification",
            icon: Icons.notification_add_outlined,
            route: HomeScreen.routeName,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: MenuBotton(
            text: "Home",
            icon: Icons.home_outlined,
            route: HomeScreen.routeName,
          ),
        ),
      ],
    );
  }
}
