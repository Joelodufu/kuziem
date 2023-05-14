import 'package:flutter/material.dart';
import '../../../../model/Course.dart';
import './body.dart';

import '../../../../enums.dart';
import '../../components/costum_nav_bar.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key, required this.course});
  final Course course;
  static String routeName = "/course_details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${course.title}"),
        ),
        body: Body(
          course: course,
        ),
        bottomNavigationBar: const CostumBottomNavbar(
          selectedMenu: MenuState.home,
        ));
  }
}
