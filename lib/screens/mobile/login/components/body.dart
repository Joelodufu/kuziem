import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../Signup/signup_screen.dart';
import '../../components/already_have_an_account_check.dart';
import '../../components/background.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Welcome Back",
              style: TextStyle(
                color: Color.fromARGB(255, 50, 80, 109),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Sign in with your Email and Password \nOr sign in with social media",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email", hintText: "ENter your email"),
                )
              ],
            )),
            // SignForm(),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => SignUpPage()));
              },
            )
          ],
        ),
      ),
    ));
  }
}
