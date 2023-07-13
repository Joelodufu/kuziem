import 'package:flutter/material.dart';
import 'package:kuziem/size_config.dart';

const kPrimaryColor = Color.fromARGB(255, 6, 68, 109);
const kPrimaryLightColor = Color.fromARGB(255, 223, 246, 255);

const kSecoundaryColor = Color.fromARGB(255, 255, 140, 8);
const kTextColor = Color(0xff757575);

const kMobilewidth = 414;
const kTabwidth = 760;

const kPrimaryGradient = LinearGradient(colors: [
  Color.fromARGB(255, 17, 117, 208),
  Color.fromARGB(255, 0, 54, 103),
], begin: Alignment.topCenter, end: Alignment.bottomCenter);

const kAnimationDuration = Duration(milliseconds: 200);

final headStyle = TextStyle(
  color: Color.fromARGB(255, 50, 80, 109),
  fontSize: getProportionalScreenWidth(25),
);

//form Error
final RegExp emailValidatorRegEx =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String fullNameNullError = "Please Enter your full Name";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Password don't match";
const String kNameNullErro = "Please Enter your name";
const String kPhonNumberNullError = "Please Enter your phone number";
const String kAddressNullErro = "Please Enter your address";
