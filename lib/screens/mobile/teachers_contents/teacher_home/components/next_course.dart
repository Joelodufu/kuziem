import 'package:flutter/material.dart';

import '../../../../../model/Course.dart';
import '../../components/profile_circular_image.dart';
import '../../course_details/course_details_screen.dart';

class NextCourse extends StatelessWidget {
  const NextCourse({
    super.key,
    required this.size,
    required this.nextCourse,
  });

  final Size size;
  final Course nextCourse;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CourseDetailsScreen(course: nextCourse)));
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: size.width * 0.46,
            height: size.width * 0.46,
            color: const Color.fromARGB(255, 227, 232, 233),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${nextCourse.title}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            child: ProfileCircularImage(
                              imageUrl: nextCourse.registeredStudents[0]
                                  ["image"]!,
                              profileize: 30,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: ProfileCircularImage(
                              imageUrl: nextCourse.registeredStudents[1]
                                  ["image"]!,
                              profileize: 30,
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: ProfileCircularImage(
                              imageUrl: nextCourse.registeredStudents[2]
                                  ["image"]!,
                              profileize: 30,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.red,
                        size: 15,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "${nextCourse.startTime}",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: -6,
            top: -6,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 39, 104, 41),
                  shape: BoxShape.circle,
                  border: Border.all(width: 3, color: Colors.white)),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
