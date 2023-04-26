import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/Signup/components/sign_up_form.dart';
import 'package:kuziem/screens/mobile/Signup/components/social_card.dart';
import 'package:kuziem/size_config.dart';

import '../../../../constants.dart';
import '../../components/already_have_an_account_check.dart';
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
        title: Text('Signup'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: getProportionalScreenWidth(50)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: getProportionalScreenHeight(20),
            ),
            Text(
              "Register Account",
              style: TextStyle(
                color: Color.fromARGB(255, 50, 80, 109),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            SignUpForm(),
            SocialCardMain(),
            AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.pushNamed(context, Login.routeName);
                }),
            Container(
              margin:
                  EdgeInsets.symmetric(vertical: SizeConfig.screnWidth * 0.04),
              child: Text(
                "By continuing you confirm that you agree \nwith our terms and conditions",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
