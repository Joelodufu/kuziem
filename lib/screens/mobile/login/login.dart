import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/Signup/signup_screen.dart';
import '../components/already_have_an_account_check.dart';
import '../components/background.dart';
import '../components/rounded_button.dart';
import '../components/rounded_inpu_field.dart';
import '../components/rounded_password_field.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
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
                  color: Color.fromARGB(255, 160, 160, 160),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedInputField(
                inputsTyp: TextInputType.emailAddress,
                hintText: 'email',
                onchanged: (value) {},
              ),
              RoundedPasswordField(
                hint: "Password",
                onChanged: (value) {
                  if (kDebugMode) {
                    print(value);
                  }
                },
              ),
              Row(
                children: const [],
              ),
              RoundButton(
                  text: "Login",
                  color: Colors.white,
                  background: Colors.blue,
                  press: () {
                    if (kDebugMode) {
                      print("Login");
                    }
                  }),
              AlreadyHaveAnAccountCheck(
                login: true,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpPage();
                  }));
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
