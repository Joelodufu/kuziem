import 'package:flutter/material.dart';

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
  String confirmPassword = "";
  bool visibility = true;
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
          createPadding(),
          buildEmailFormField(),
          createPadding(),
          buildPasswordFormField(),
          createPadding(),
          buildConfirmPasswordFormField(),
          createPadding(),
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
                    Icon(visibility ? Icons.visibility : Icons.visibility_off),
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
            setState(() {
              errors.add(kShortPassError);
            });
            return kShortPassError;
          } else if (value.length < 8 && errors.contains(kShortPassError)) {
            return kShortPassError;
          } else {
            setState(() {
              password = value;
            });
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
            hintText: "Enter your passwrod",
            labelText: "Password",
            suffixIcon: Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                icon:
                    Icon(visibility ? Icons.visibility : Icons.visibility_off),
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
          return kInvalidEmailError;
        } else if (!emailValidatorRegEx.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          return kInvalidEmailError;
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
        suffixIcon: Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.email),
        ),
        labelText: "Email",
        hintText: "Enter your email",
      ),
    ));
  }
}
