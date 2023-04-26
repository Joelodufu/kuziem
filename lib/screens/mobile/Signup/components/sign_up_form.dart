import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/login/login.dart';

import '../../../../components/form_error.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../components/rounded_button.dart';
import '../../components/text_field_container.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool visibility = true;
  String confirmPassword = "";
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          buildPasswordFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          buildConfirmPasswordFormField(),
          createPadding(),
          RoundButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  //Complete the form action
                }
              }),
          createPadding(),
        ],
      ),
    );
  }

  TextFieldContainer buildConfirmPasswordFormField() {
    return TextFieldContainer(
      child: TextFormField(
        onSaved: (newValue) => confirmPassword = newValue!,
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kPassNullError)) {
            setState(() {
              errors.add(kPassNullError);
            });
            return kPassNullError;
          } else if (value!.isEmpty && errors.contains(kPassNullError)) {
            return kPassNullError;
          } else if (value != password && !errors.contains(kMatchPassError)) {
            setState(() {
              errors.add(kMatchPassError);
            });
            return kMatchPassError;
          } else if (value != password && errors.contains(kMatchPassError)) {
            return kMatchPassError;
          } else {
            setState(() {
              confirmPassword = value;
            });
            return null;
          }
          return null;
        },
        onChanged: (value) {
          if (value!.isEmpty && errors.contains(kPassNullError)) {
            removeError(error: kPassNullError);
          } else if (value == password && errors.contains(kMatchPassError)) {
            removeError(error: kMatchPassError);
          }
          return null;
        },
        obscureText: visibility,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Confirm Password",
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
            )),
      ),
    );
  }

  SizedBox createPadding() {
    return SizedBox(
      height: getProportionalScreenWidth(15),
    );
  }

  TextFieldContainer buildPasswordFormField() {
    return TextFieldContainer(
      child: TextFormField(
        onSaved: (newValue) => password = newValue!,
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kPassNullError)) {
            setState(() {
              errors.add(kPassNullError);
            });
            return kPassNullError;
          } else if (value!.isEmpty && errors.contains(kPassNullError)) {
            return kPassNullError;
          } else if (value.length < 8 && !errors.contains(kShortPassError)) {
            addError(error: kShortPassError);
            return "";
          }
          return null;
        },
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kPassNullError)) {
            removeError(error: kPassNullError);
          } else if (value.length >= 8 && errors.contains(kShortPassError)) {
            removeError(error: kShortPassError);
          }
          password = value;
          return null;
        },
        obscureText: visibility,
        decoration: InputDecoration(
          hintText: "Enter your password",
          labelText: "Password",
          suffixIcon: Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(visibility ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  visibility = !visibility;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  TextFieldContainer buildEmailFormField() {
    return TextFieldContainer(
        child: TextFormField(
      onSaved: (newValue) => email = newValue!,
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
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegEx.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Enter your Email",
        labelText: "Email",
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.email),
            onPressed: () {},
          ),
        ),
      ),
    ));
  }
}
