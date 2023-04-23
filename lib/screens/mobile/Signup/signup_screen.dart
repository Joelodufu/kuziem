import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../components/already_have_an_account_check.dart';
import '../components/background.dart';
import '../components/rounded_button.dart';
import '../components/rounded_inpu_field.dart';
import '../components/rounded_password_field.dart';
import '../login/login.dart';
import 'components/or_divider.dart';
import 'components/social_icons.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              RoundedInputField(
                inputsTyp: TextInputType.emailAddress,
                hintText: 'email',
                onchanged: (value) {},
              ),
              RoundedInputField(
                inputsTyp: TextInputType.number,
                inputIcon: Icons.phone,
                hintText: 'Phone',
                onchanged: (value) {},
              ),
              RoundedPasswordField(
                hint: "Password",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                hint: "Confirm Password",
                onChanged: (value) {},
              ),
              RoundButton(
                  text: "Signup",
                  color: Colors.white,
                  background: Colors.blue,
                  press: () {
                    if (kDebugMode) {
                      print("Signup");
                    }
                  }),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Login();
                  }));
                },
              ),
              const OrDevider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    color: Color.fromARGB(255, 26, 62, 104),
                    press: () {
                      print("Facebook");
                    },
                  ),
                  SocialIcon(
                    color: Color.fromARGB(255, 114, 23, 16),
                    icon: Icons.g_mobiledata,
                    press: () {
                      print("Google");
                    },
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
