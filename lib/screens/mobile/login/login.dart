import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../Signup/signup_screen.dart';
import '../components/already_have_an_account_check.dart';
import '../components/background.dart';
import 'components/body.dart';
import 'components/sign_form.dart';

class Login extends StatelessWidget {
  static String routeName = "/sign_in";
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionalScreenWidth(40),
          ),
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
            height: 30,
          ),
          SignForm(),
          AlreadyHaveAnAccountCheck(
            login: true,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => SignUpPage()));
            },
          )
        ],
      ),
    )));
  }
}
