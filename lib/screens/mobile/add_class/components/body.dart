import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/screens/mobile/components/rounded_button.dart';

import '../../../../model/ClassModel.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _titleController;
  late TextEditingController _courseController;
  late TextEditingController _idController;
  late TextEditingController _linkController;
  late DateTime _startTime = DateTime.now();
  late DateTime _endTime = DateTime.now();
  List<String> _questions = [];
  List<String> _feedbacks = [];
  List<String> _conversations = [];
  bool _classDoneWith = false;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _courseController = TextEditingController();
    _idController = TextEditingController();
    _linkController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _courseController.dispose();
    _idController.dispose();
    _linkController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Create the ClassModel object
      ClassModel newClass = ClassModel(
        title: _titleController.text,
        course: _courseController.text,
        id: _idController.text,
        link: _linkController.text,
        startTime: _startTime,
        endTime: _endTime,
        questions: _questions,
        feedBacks: _feedbacks,
        conversations: _conversations,
        classDoneWith: _classDoneWith,
      );

      // Perform any desired operations with the newClass object
      print(newClass);

      // Reset the form fields
      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Fill in the form to create a class",
                  style: TextStyle(fontSize: 20, color: kPrimaryColor),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  hintText: "Class Title",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundButton(
                  background: Color.fromARGB(255, 239, 242, 245),
                  color: kPrimaryColor,
                  text: 'Select Date',
                  press: () async {
                    DateTime? selectedDateTime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2025),
                    );
                    if (selectedDateTime != null) {
                      setState(() {
                        _startTime = selectedDateTime;
                      });
                    }
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundButton(
                  background: Color.fromARGB(255, 239, 242, 245),
                  color: kPrimaryColor,
                  text: "Select Time",
                  press: () async {
                    var selectedDateTime = await showTimePicker(
                      initialTime: TimeOfDay(hour: 00, minute: 00),
                      context: context,
                    );
                    if (selectedDateTime != null) {
                      setState(() {
                        //_endTime = selectedDateTime;
                      });
                    }
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Divider(),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundButton(
                  text: 'Submit',
                  press: _submitForm,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
