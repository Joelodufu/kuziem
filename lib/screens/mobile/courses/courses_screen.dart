import 'package:flutter/material.dart';
import './components/body.dart';

class CoursesScreen extends StatelessWidget {
  static String routeName = "/courses";
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Latest Courses")),
      body: const Body(),
    );
  }
}
