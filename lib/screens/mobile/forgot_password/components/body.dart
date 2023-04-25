import 'package:flutter/material.dart';
import 'package:kuziem/components/form_error.dart';
import 'package:kuziem/screens/mobile/Signup/signup_screen.dart';
import 'package:kuziem/screens/mobile/components/already_have_an_account_check.dart';
import 'package:kuziem/screens/mobile/components/rounded_button.dart';
import 'package:kuziem/screens/mobile/components/rounded_inpu_field.dart';
import 'package:kuziem/screens/mobile/login/login.dart';
import 'package:kuziem/screens/mobile/login_success/login_success_screen.dart';
import 'package:kuziem/size_config.dart';

import '../../../../constants.dart';
import '../../components/background.dart';
import '../../components/text_field_container.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];

  String email = "";

  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Forgot Pasword",
            style: TextStyle(
              color: Color.fromARGB(255, 50, 80, 109),
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Please enter your email and we will \nsend you a link to regain your access",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kTextColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFieldContainer(
                    child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                      setState(() {
                        errors.add(kEmailNullError);
                      });
                      return "";
                    } else if (value!.isEmpty &&
                        errors.contains(kEmailNullError)) {
                      return "";
                    } else if (!emailValidatorRegEx.hasMatch(value) &&
                        !errors.contains(kInvalidEmailError)) {
                      setState(() {
                        errors.add(kInvalidEmailError);
                      });
                      return "";
                    } else if (!emailValidatorRegEx.hasMatch(value) &&
                        errors.contains(kInvalidEmailError)) {
                      return "";
                    } else {
                      return null;
                    }
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
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.input,
                      color: kPrimaryLightColor,
                    ),
                    border: InputBorder.none,
                    hintText: "Recovery Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                  textAlign: TextAlign.center,
                )),
                FormError(errors: errors),
                SizedBox(
                  height: getProportionalScreenWidth(20),
                ),
                RoundButton(
                    text: "continue",
                    press: () {
                      if (_formKey.currentState!.validate()) {
                        //save for usage
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Login();
                        }));
                      }
                      return null;
                    })
              ],
            ),
          ),
          SizedBox(
            height: getProportionalScreenWidth(20),
          ),
          AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpPage();
                }));
              })
        ],
      ),
    ));
  }
}
