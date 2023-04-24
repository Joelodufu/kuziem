import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/forgot_password/components/body.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = "/forgot_password";
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
