import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:kuziem/constants.dart';
import 'package:open_file/open_file.dart';

import '../../../../../model/Course.dart';
import '../../../components/rounded_button.dart';
import '../../course_details/course_details_screen.dart';
import 'head_divider.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
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
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Course Details",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const HeadDivider(
                    headerText: "Basic Details",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildCourseName(),
                  buidlCoursAbout(),
                  buildPrice(),
                  SizedBox(
                    height: 10,
                  ),
                  const HeadDivider(
                    headerText: "Colaboration",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildCourseAffiliation(),
                  buildCourseColaborators(),
                  SizedBox(
                    height: 10,
                  ),
                  const HeadDivider(
                    headerText: "Others",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildCertificateNameInput(),
                  buildRequirements(),
                  const HeadDivider(
                    headerText: "Select Images",
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                                  "Select Description Image(s)",
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
                      text: "Create Course",
                      color: Colors.white,
                      background: kPrimaryColor,
                      press: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CourseDetailsScreen(
                                      course: demoCourses[0])));
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

  Padding buidlCoursAbout() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        minLines: 3,
        maxLines: 4,
        onChanged: (value) {},
        validator: (value) {
          if (value == "") {
            return "What is this course is about";
          }
          return null;
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "About",
          hintText: "",
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

  Padding buildCourseName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: (value) {},
        validator: (value) {
          if (value == "") {
            return "Enter Course Title";
          }
          return null;
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "Course Title",
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

  Padding buildPrice() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        onChanged: (value) {},
        validator: (value) {
          if (value == "") {
            return "Enter Course Price";
          }
          return null;
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "Course Price",
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

  Padding buildCourseAffiliation() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: (value) {},
        validator: (value) {
          return null;
        },
        minLines: 3,
        maxLines: 5,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "Affiliates",
          hintText: "Lists of affiliates, Separated with a coma ",
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

  Padding buildCourseColaborators() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: (value) {},
        validator: (value) {
          return null;
        },
        minLines: 3,
        maxLines: 5,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "colaborators",
          hintText: "Lists of Colaborators, Separated with a coma ",
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

  Padding buildRequirements() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: (value) {},
        validator: (value) {
          return null;
        },
        minLines: 3,
        maxLines: 5,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "Requirements",
          hintText: "Lists of Requirements, Separated with a coma ",
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

  void openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}
