import 'package:flutter/material.dart';


import '../../../../enums.dart';
import '../../../../model/Notifications.dart';
import '../../components/costum_nav_bar.dart';
import '../../components/icon_btn_with_count.dart';
import '../../components/notifications.dart';
import 'components/body.dart';

class AddCourseScreen extends StatelessWidget {
  const AddCourseScreen({super.key});
  static String routeName = "/add_course";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create a Course"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButtonWithCount(
              icon: Icons.notification_add,
              press: () {
                //Send to notification Screen
                //Navigator.pushNamed(context, CartScreen.routeName);
                openNotification(context);
              },
              numberOfItems: myNotifications.length,
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
