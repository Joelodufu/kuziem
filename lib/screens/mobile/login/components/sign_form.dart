import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/Signup/components/or_divider.dart';
import 'package:kuziem/screens/mobile/forgot_password/forgot_password_screen.dart';
import 'package:kuziem/screens/mobile/login/components/social_card.dart';
import 'package:kuziem/screens/mobile/login_success/login_success_screen.dart';

import '../../../../components/form_error.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../components/rounded_button.dart';
import '../../components/text_field_container.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool remember = false;
  bool visibility = true;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            buildPasswordForm(),
            SizedBox(
              height: getProportionalScreenWidth(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: remember,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    }),
                Text("Remember Me"),
                SizedBox(
                  width: getProportionalScreenWidth(40),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ForgotPassword()));
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionalScreenWidth(20),
            ),
            RoundButton(
                text: "Login",
                color: Colors.white,
                background: Colors.blue,
                press: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                  }
                }),
            OrDevider(),
            SocialCard()
          ],
        ));
  }

  TextFieldContainer buildPasswordForm() {
    return TextFieldContainer(
      child: TextFormField(
          validator: (value) {
            if (value!.isEmpty && !errors.contains(kPassNullError)) {
              setState(() {
                errors.add(kPassNullError);
              });
              return kPassNullError;
            } else if (value.isEmpty && errors.contains(kPassNullError)) {
              return kPassNullError;
            } else if (value.length < 8 && !errors.contains(kShortPassError)) {
              setState(() {
                errors.add(kShortPassError);
              });
              return kShortPassError;
            } else if (value.length < 8 && errors.contains(kShortPassError)) {
              return kShortPassError;
            } else {
              return null;
            }
          },
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(kPassNullError)) {
              setState(() {
                errors.remove(kPassNullError);
              });
            } else if (value.length >= 8 && errors.contains(kShortPassError)) {
              setState(() {
                errors.remove(kShortPassError);
              });
            }
            return null;
          },
          obscureText: visibility,
          decoration: InputDecoration(
            hintText: "Enter your password",
            labelText: "Password",
            suffixIcon: Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                icon:
                    Icon(!visibility ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    visibility = !visibility;
                  });
                },
              ),
            ),
          )),
    );
  }

  TextFieldContainer buildEmailFormField() {
    return TextFieldContainer(
        child: TextFormField(
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return kEmailNullError;
        } else if (value!.isEmpty && errors.contains(kEmailNullError)) {
          return kEmailNullError;
        } else if (!emailValidatorRegEx.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegEx.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.email),
            onPressed: () {},
          ),
        ),
        border: InputBorder.none,
        labelText: "Email",
        hintText: "Enter your email",
      ),
    ));
  }
}
