import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kuziem/constants.dart';

import '../../teachers_contents/register_splash/register_splash_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: size.height * .3,
            width: size.width,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 10)
              ], color: Color.fromARGB(255, 245, 244, 244)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildProfileEditor(),
                      buildNotificationEditor(),
                      buildClassesEditor()
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            //Leads to Profile Editing Page
                          },
                          child: Column(
                            children: const [
                              Icon(
                                Icons.payment,
                                size: 50,
                                color: kPrimaryColor,
                              ),
                              Text("Payments")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            //Leads to Profile Editing Page
                          },
                          child: Column(
                            children: const [
                              Icon(
                                Icons.group,
                                size: 50,
                                color: kPrimaryColor,
                              ),
                              Text("Groups")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            //Leads to Profile Editing Page
                            Navigator.pushNamed(
                                context, RegisterSplashScreen.routeName);
                          },
                          child: Column(
                            children: const [
                              Icon(
                                Icons.table_chart,
                                size: 50,
                                color: kPrimaryColor,
                              ),
                              Text("Teacher")
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding buildClassesEditor() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          //Leads to Profile Editing Page
        },
        child: Column(
          children: const [
            Icon(
              Icons.class_,
              size: 45,
              color: kPrimaryColor,
            ),
            Text("Classes")
          ],
        ),
      ),
    );
  }

  Padding buildNotificationEditor() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          //Leads to Profile Editing Page
        },
        child: Column(
          children: const [
            Icon(
              Icons.notification_add,
              size: 45,
              color: kPrimaryColor,
            ),
            Text("Notifications")
          ],
        ),
      ),
    );
  }

  Padding buildProfileEditor() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          //Leads to Profile Editing Page
        },
        child: Column(
          children: const [
            Icon(
              Icons.person,
              size: 50,
              color: kPrimaryColor,
            ),
            Text("Profile")
          ],
        ),
      ),
    );
  }
}
