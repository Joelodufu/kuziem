import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/login_success/components/body.dart';
import 'package:kuziem/screens/mobile/student_home/student_home_screen.dart';

class LoginSuccessScreen extends StatefulWidget {
  static String routeName = "/login_success";
  const LoginSuccessScreen({super.key});

  @override
  State<LoginSuccessScreen> createState() => _LoginSuccessScreenState();
}

class _LoginSuccessScreenState extends State<LoginSuccessScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(milliseconds: 600),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => StudentHomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
