import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/components/icon_btn_with_count.dart';

import '../../../../enums.dart';
import '../../../../model/Notifications.dart';
import '../../components/costum_nav_bar.dart';
import '../../components/navigator_main.dart';
import '../../components/notifications.dart';
import './components/body.dart';

class TeacherHomeScreen extends StatelessWidget {
  static String routeName = "/teacher_home_screen";
  const TeacherHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teachers Dashboard"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButtonWithCount(
              icon: Icons.notification_add,
              press: () {
                openNotification(context);
              },
              numberOfItems: myNotifications.length,
            ),
          )
        ],
      ),
      body: Body(),
      drawer: const NavigatorMain(),
      bottomNavigationBar: const CostumBottomNavbar(
        selectedMenu: MenuState.home,
      ),
    );
  }

  Future<dynamic> openNotification(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Notifications"),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(),
                    ...List.generate(
                        myNotifications.length,
                        (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: NotificationFill(
                                  Notification: myNotifications[index]),
                            ))
                  ],
                ),
              ),
            ));
  }
}
