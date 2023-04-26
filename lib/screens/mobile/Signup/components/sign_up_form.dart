import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/login/login.dart';

import '../../../../components/form_error.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../components/already_have_an_account_check.dart';
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
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionalScreenWidth(30),
                vertical: getProportionalScreenWidth(20)),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
          ),
          createPadding(),
          buildEmailFormField(),
          createPadding(),
          buildPasswordFormField(),
          createPadding(),
          buildConfirmPasswordFormField(),
          createPadding(),
          FormError(errors: errors),
          RoundButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  //Complete the form action
                }
              }),
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
            addError(error: kPassNullError);
            return "";
          } else if (password != confirmPassword &&
              !errors.contains(kMatchPassError)) {
            addError(error: kMatchPassError);
            return "";
          }
          return null;
        },
        onChanged: (value) {
          if (password == confirmPassword && errors.contains(kMatchPassError)) {
            removeError(error: kMatchPassError);
          }
          return null;
        },
        obscureText: true,
        decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "Confirm Password",
            icon: Icon(
              Icons.lock,
            ),
            suffixIcon: Icon(Icons.visibility_off)),
        textAlign: TextAlign.center,
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
            addError(error: kPassNullError);
            return "";
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
        obscureText: true,
        decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "Password",
            icon: Icon(
              Icons.lock,
            ),
            suffixIcon: Icon(Icons.visibility_off)),
        textAlign: TextAlign.center,
      ),
    );
  }

  TextFieldContainer buildEmailFormField() {
    return TextFieldContainer(
        child: TextFormField(
      onSaved: (newValue) => email = newValue!,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegEx.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          addError(error: kInvalidEmailError);
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
      decoration: const InputDecoration(
        suffixIcon: Icon(
          Icons.input,
          color: kPrimaryLightColor,
        ),
        border: InputBorder.none,
        hintText: "Email",
        prefixIcon: Icon(Icons.email),
      ),
      textAlign: TextAlign.center,
    ));
  }
}
