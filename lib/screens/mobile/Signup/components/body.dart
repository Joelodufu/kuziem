import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/Signup/components/sign_up_form.dart';
import 'package:kuziem/screens/mobile/Signup/components/social_card.dart';
import 'package:kuziem/size_config.dart';

import '../../../../constants.dart';
import '../../components/already_have_an_account_check.dart';
import '../../components/background.dart';
import '../../login/login.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Signup'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: getProportionalScreenWidth(50)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Register Account",
              style: headStyle,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            const Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            const SignUpForm(),
            const SocialCardMain(),
            AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.pushNamed(context, Login.routeName);
                }),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight * 0.02),
              child: const Text(
                "By continuing you confirm that you agree \nwith our Terms and Conditions",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
