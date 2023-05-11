import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:open_file/open_file.dart';
import '../../../components/rounded_button.dart';
import '../../teacher_home/teacher_home_screen.dart';

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
  final String skillNams = "";
  final String skillLevel = "";
  final String skillExperience = "";
  var file;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  buildSkillLevel(),
                  buildCertificateNameInput(),
                  InkWell(
                    onTap: () async {
                      final result = await FilePicker.platform.pickFiles();
                      if (result == null) {
                        return;
                      } else {
                        setState(() {
                          file = result.files.first;
                        });
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                          child: file == null
                              ? const Text(
                                  "Select Certificate File",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 55, 80, 192),
                                  ),
                                )
                              : Image.file(
                                  File(file.path),
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ),
                  ),
                  RoundButton(
                      text: "Register",
                      color: Colors.white,
                      background: kPrimaryColor,
                      press: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(
                              context, TeacherHomeScreen.routeName);
                        }
                      }),
                ],
              ))
        ],
      ),
    );
  }

  Padding buildCertificateNameInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: (value) {},
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "Certification",
          hintText: "Certificate Name",
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

  Padding buildSkillLevel() {
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

  void openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}
