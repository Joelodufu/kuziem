import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(),
          title: Text(
            "Login Success",
            style: TextStyle(),
          ),
        ),
        body: Body());
  }
}
