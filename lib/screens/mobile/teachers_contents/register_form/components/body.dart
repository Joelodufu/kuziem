import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';

import '../../../components/rounded_button.dart';
import '../../../login_success/login_success_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  bool? inPersonInformal = false;
  bool? inPersonFormal = false;
  bool? online = false;
  bool? others = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Form(
              key: _formKey,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "What kind of teaching have you done before?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CheckboxListTile(
                      value: inPersonInformal,
                      onChanged: (newValue) {
                        setState(() {
                          inPersonInformal = newValue;
                        });
                      },
                      title: const Text("In Person Informal"),
                      tileColor: const Color.fromARGB(255, 242, 245, 247),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CheckboxListTile(
                      value: inPersonFormal,
                      onChanged: (newValue) {
                        setState(() {
                          inPersonFormal = newValue;
                        });
                      },
                      title: const Text("In Person Formal"),
                      tileColor: const Color.fromARGB(255, 242, 245, 247),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CheckboxListTile(
                      value: online,
                      onChanged: (newValue) {
                        setState(() {
                          online = newValue;
                        });
                      },
                      title: const Text("Online"),
                      tileColor: const Color.fromARGB(255, 242, 245, 247),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CheckboxListTile(
                      value: others,
                      onChanged: (newValue) {
                        setState(() {
                          others = newValue;
                        });
                      },
                      title: const Text("Others"),
                      tileColor: const Color.fromARGB(255, 242, 245, 247),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Skills and Certifications",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  buildSkillName(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (value) {},
                      validator: (value) {
                        if (value == "") {
                          return "Please Input Experience";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        labelText: "Skill Level",
                        hintText: "Beginner, Intermediary, Proffesional?",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildExperienceInput(),
                  ),
                  RoundButton(
                      text: "Register",
                      color: Colors.white,
                      background: kPrimaryColor,
                      press: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(
                              context, LoginSuccessScreen.routeName);
                        }
                      }),
                ],
              ))
        ],
      ),
    );
  }

  Padding buildSkillName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: (value) {},
        validator: (value) {
          if (value == "") {
            return "Please Input Experience";
          }
          return null;
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "Skill Name",
          hintText: "Name of skill you have...",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  TextFormField buildExperienceInput() {
    return TextFormField(
      onChanged: (value) {},
      validator: (value) {
        if (value == "") {
          return "Please Input Experience";
        }
        return null;
      },
      minLines: 3,
      maxLines: 5,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        labelText: "Experience",
        hintText: "Please input your Experiences...",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
