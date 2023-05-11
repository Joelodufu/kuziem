import 'package:flutter/material.dart';

import '../../../../constants.dart';

class MyCourseCard extends StatelessWidget {
  const MyCourseCard({
    super.key,
    required this.title,
    required this.image,
    required this.isDone,
    required this.students,
  });

  final String title, image;
  final int students;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      child: Container(
        width: size.width * .94,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 218, 217, 217)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 70,
                width: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 1,
              decoration: const BoxDecoration(color: Colors.white),
            ),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: students < 5
                            ? Color.fromARGB(255, 124, 34, 28)
                            : students < 10
                                ? Color.fromARGB(255, 93, 117, 48)
                                : const Color.fromARGB(255, 31, 121, 34),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text(
                        "$students",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    bottom: 30,
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 2,
                                color: Colors.black.withOpacity(0.2))
                          ]),
                      child: const Icon(
                        Icons.person_pin,
                        color: kPrimaryColor,
                        size: 17,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: isDone
                      ? Icon(
                          Icons.settings,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.checklist,
                          color: Colors.green,
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
