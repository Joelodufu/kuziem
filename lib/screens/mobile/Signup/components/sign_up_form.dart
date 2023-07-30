import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kuziem/controllers/auth_controller.dart';
import 'package:kuziem/services/auth_service.dart';

import '../../../../constants.dart';
import '../../../../helperFunction.dart';
import '../../../../size_config.dart';
import '../../../../utils/show_snackbar.dart';
import '../../../../widgets.dart';
import '../../components/rounded_button.dart';
import '../../components/text_field_container.dart';
import '../../login_success/login_success_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final AuthController _authController = AuthController();
  final AuthService authService = AuthService();

  late String email;
  late String fullName;
  late String password;
  bool visibility = true;
  late String confirmPassword;
  final List<String> errors = [];
  bool isLoading = false;
  late bool success;
  String message = "";

  _signUpUser() async {
    setState(() {
      isLoading = true;
    });

    await authService
        .registerUserWithEmailAndPassword(fullName, email, password)
        .then((value) async {
      if (value == true) {
        //Saving the shared preference state
        await HelperFunctions.saveUserLoggedInStatuse(true);
        await HelperFunctions.saveUserEmailSF(email);
        await HelperFunctions.saveUserNameSF(fullName);

        // ignore: use_build_context_synchronously
        nextScreenReplace(context, const LoginSuccessScreen());
      } else {
        showSnackBaro(context, Colors.red, value);
        setState(() {
          isLoading = false;
        });
      }
    });
  }

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
          buildFullNameField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
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
          isLoading ? CircularProgressIndicator() : Container(),
          RoundButton(
              text: "Register",
              press: () async {
                if (_formKey.currentState!.validate()) {
                  await _signUpUser();

                  // ignore: use_build_context_synchronously
                  // Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                  //Complete the form action
                } else {
                  showSnack(context, "Fields Empty", success);
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
          } else if (value.isEmpty && errors.contains(kPassNullError)) {
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
          if (value.isEmpty && errors.contains(kPassNullError)) {
            removeError(error: kPassNullError);
          } else if (value == password && errors.contains(kMatchPassError)) {
            removeError(error: kMatchPassError);
          }
          setState(() {
            confirmPassword = value;
          });
        },
        obscureText: visibility,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Confirm Password",
            labelText: "Password",
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
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
          } else if (value.isEmpty && errors.contains(kPassNullError)) {
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
          setState(() {
            password = value;
          });
          return null;
        },
        obscureText: visibility,
        decoration: InputDecoration(
          hintText: "Enter your password",
          labelText: "Password",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
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
        } else if (value.isEmpty && errors.contains(kEmailNullError)) {
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
        setState(() {
          email = value;
        });
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Enter your Email",
        labelText: "Email",
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: const Icon(Icons.email),
            onPressed: () {},
          ),
        ),
      ),
    ));
  }

  TextFieldContainer buildFullNameField() {
    return TextFieldContainer(
        child: TextFormField(
      onSaved: (newValue) => fullName = newValue!,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(fullNameNullError);
          });
          return fullNameNullError;
        } else if (value.isEmpty && errors.contains(fullNameNullError)) {
          return fullNameNullError;
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(fullNameNullError)) {
          removeError(error: fullNameNullError);
        }
        setState(() {
          fullName = value;
        });
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Enter your Full Name",
        labelText: "Full Name",
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ),
      ),
    ));
  }
}
