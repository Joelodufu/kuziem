import 'package:flutter/material.dart';
import 'components/body.dart';

class Login extends StatelessWidget {
  static String routeName = "/sign_in";
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
