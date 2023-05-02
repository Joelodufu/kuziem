import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/student_home/components/body.dart';

class StudentHomeScreen extends StatelessWidget {
  static String routeName = "/student_home";
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
