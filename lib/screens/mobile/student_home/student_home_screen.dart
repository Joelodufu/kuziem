import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/screens/mobile/student_home/components/body.dart';
import '../../../enums.dart';
import '../../../size_config.dart';
import '../components/costum_nav_bar.dart';
import '../components/navigator_main.dart';
import '../components/notifications.dart';
import '../kuzbot/kuzbot_screen.dart';
import '../questions/question_screen.dart';
import 'components/icon_btn_with_count.dart';
import '../../../model/Notifications.dart';

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
              press: () {
                //Send to notification Screen
                //Navigator.pushNamed(context, CartScreen.routeName);
                openNotification(context);
              },
              numberOfItems: myNotifications.length,
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
          openDialog(context);
          //Navigator.pushNamed(context, QuestionScreen.routeName);
        },
        child: Icon(
          Icons.question_mark,
        ),
      ),
    );
  }

  Future<dynamic> openDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Question Center"),
        content: SizedBox(
          height: 200,
          child: Column(children: [
            Divider(),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, KuzBotScreen.routeName);
              },
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 1,
                          color:
                              Color.fromARGB(255, 20, 48, 85).withOpacity(.05))
                    ]),
                    child: Image(
                        width: getProportionalScreenWidth(240),
                        image: AssetImage(
                          "assets/images/kuzbotlogo.png",
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, QuestionScreen.routeName);
              },
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 1,
                          color:
                              Color.fromARGB(255, 20, 48, 85).withOpacity(.05))
                    ]),
                    child: Image(
                        width: getProportionalScreenWidth(240),
                        image: AssetImage(
                          "assets/images/comunityquestion.png",
                        )),
                  )
                ],
              ),
            ),
          ]),
        ),
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
