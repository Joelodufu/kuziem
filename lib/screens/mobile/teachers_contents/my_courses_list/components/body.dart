import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:kuziem/model/Course.dart';

import '../../components/my_course_card.dart';

List<Course> allMyCourse = demoCourses;

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...List.generate(
              allMyCourse.length,
              (index) => MyCourseCard(
                  title: allMyCourse[index].title,
                  image: allMyCourse[index].images[0],
                  isDone: allMyCourse[index].isDone,
                  students: allMyCourse[index].registeredStudents.length))
        ],
      ),
    );
  }
}
