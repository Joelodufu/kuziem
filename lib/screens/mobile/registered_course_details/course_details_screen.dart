import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import '../../../enums.dart';
import '../../../model/Course.dart';
import '../components/costum_nav_bar.dart';
import './components/body.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key, required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: Body(
        course: course,
      ),
      bottomNavigationBar: const CostumBottomNavbar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
