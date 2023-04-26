import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            Text(
              "Register Account",
              style: headStyle,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            const Text(
              "Sign in with your Email and Password \nOr sign in with social media",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            CompleteProfileForm()
          ],
        ),
      ),
    );
  }
}
