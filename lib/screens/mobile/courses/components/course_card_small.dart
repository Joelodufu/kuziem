import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../model/Course.dart';
import '../../../../size_config.dart';

class CoureCardSmall extends StatelessWidget {
  const CoureCardSmall({
    super.key,
    required this.course,
    required this.press,
  });

  final Course course;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          height: getProportionalScreenWidth(300),
          width: getProportionalScreenWidth(160),
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 218, 218, 218),
                      spreadRadius: 1,
                      blurRadius: 5)
                ]),
            child: Column(children: [
              SizedBox(
                child: Image.asset(
                  course.images[0],
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.diversity_2,
                      size: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                  Text(course.creator)
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  course.title,
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.school_outlined,
                        size: 20, color: Colors.blue),
                  ),
                  RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                        children: [
                          TextSpan(
                              text: "Earn a certificate",
                              style: TextStyle(color: Colors.blue)),
                          TextSpan(text: "", style: TextStyle()),
                        ]),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 236, 238, 240)),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.check_circle,
                          color: kPrimaryColor,
                          size: 14,
                        ),
                      ),
                      Text("Admition Opened",
                          style: TextStyle(color: kPrimaryColor)),
                    ],
                  ),
                ),
              )
            ]),
          )),
    );
  }
}
