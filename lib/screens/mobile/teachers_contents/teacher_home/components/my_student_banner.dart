import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../components/profile_circular_image.dart';

class MyStudentsBanner extends StatelessWidget {
  const MyStudentsBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 210,
      color: const Color.fromARGB(255, 227, 232, 233),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My \nStudents",
                    style: headStyle,
                  ),
                  const Icon(
                    Icons.local_police,
                    size: 40,
                    color: kPrimaryColor,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 30,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("3 days, 23 hours, 30 mins"),
                      ),
                    ),
                    Positioned(
                      left: 170,
                      top: -5,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 3,
                                  spreadRadius: 2),
                            ],
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.notifications_on,
                          color: kPrimaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.white,
            ),
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ProfileCircularImage(
                      imageUrl: "assets/images/joellee.jpg",
                    ),
                    Positioned(
                      left: 30,
                      child: ProfileCircularImage(
                        imageUrl: "assets/images/joellee.jpg",
                      ),
                    ),
                    Positioned(
                      left: 60,
                      child: ProfileCircularImage(
                        imageUrl: "assets/images/joellee.jpg",
                        profileize: 40,
                      ),
                    ),
                    Positioned(
                        left: 90,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 2),
                            ],
                            border: Border.all(width: 4, color: Colors.white),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Text(
                            "25+",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold),
                          )),
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
