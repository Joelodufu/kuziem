import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromARGB(255, 6, 68, 109);
const kPrimaryLightColor = Color.fromARGB(255, 223, 246, 255);

const kSecoundaryColor = Color.fromARGB(255, 8, 197, 255);
const kTextColor = Color(0xff757575);

const kMobilewidth = 414;
const kTabwidth = 760;

const kPrimaryGradient = LinearGradient(colors: [
  Color.fromARGB(255, 17, 117, 208),
  Color.fromARGB(255, 0, 54, 103),
], begin: Alignment.bottomCenter, end: Alignment.topCenter);

const kAnimationDuration = Duration(milliseconds: 200);

//form Error
final RegExp emailValidatorRegEx =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please ENter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Password don't mat h";
