import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/Signup/components/body.dart';

class SignUpPage extends StatelessWidget {
  static String routeName = "/sign_up";

  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
