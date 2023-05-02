import 'package:flutter/material.dart';
import 'package:kuziem/model/Course.dart';
import 'package:kuziem/size_config.dart';

import '../../../../constants.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight * 0.02),
      width: getProportionalScreenWidth(334),
      height: getProportionalScreenWidth(319),
      decoration: BoxDecoration(color: Color.fromARGB(255, 237, 248, 255)),
      child: Column(
        children: [
          SizedBox(
            width: getProportionalScreenWidth(334),
            height: getProportionalScreenWidth(128),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image(image: AssetImage(course.images[0])),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  course.title,
                  style: TextStyle(
                      fontSize: getProportionalScreenWidth(22),
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.badge_outlined),
                    SizedBox(
                      width: getProportionalScreenWidth(5),
                    ),
                    Text(course.affiliation)
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.handshake_rounded),
                    SizedBox(
                      width: getProportionalScreenWidth(5),
                    ),
                    Text(course.colaborators[0])
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.date_range),
                    SizedBox(
                      width: getProportionalScreenWidth(5),
                    ),
                    const Text(
                      "25th/04/2023",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text(
                  "₦${course.price}",
                  textAlign: TextAlign.start,
                  style: headStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
