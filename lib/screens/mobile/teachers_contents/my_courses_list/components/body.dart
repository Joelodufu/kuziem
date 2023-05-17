import 'package:flutter/material.dart';
import 'package:kuziem/model/Course.dart';
import 'package:kuziem/screens/mobile/teachers_contents/course_details/course_details_screen.dart';

import '../../add_course/add_course_screen.dart';
import '../../../components/rounded_button.dart';
import '../../components/my_course_card.dart';

List<Course> allMyCourse =
    demoCourses.where((course) => course.creator == "Joel Odufu").toList();

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...List.generate(
                      allMyCourse.length,
                      (index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CourseDetailsScreen(
                                          course: demoCourses[index])));
                            },
                            child: MyCourseCard(
                                title: allMyCourse[index].title,
                                image: allMyCourse[index].images[0],
                                isDone: allMyCourse[index].isDone,
                                students: allMyCourse[index]
                                    .registeredStudents
                                    .length),
                          )),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    child: RoundButton(
                      text: "Create A Course",
                      press: () {
                        Navigator.pushNamed(context, AddCourseScreen.routeName);
                      },
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
