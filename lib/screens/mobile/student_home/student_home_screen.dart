import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/student_home/components/body.dart';
import '../components/navigator_main.dart';

class StudentHomeScreen extends StatelessWidget {
  static String routeName = "/student_home";
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Body(),
      drawer: const NavigatorMain(),
    );
  }
}
