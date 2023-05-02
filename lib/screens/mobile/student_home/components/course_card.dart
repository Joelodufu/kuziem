import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../model/Course.dart';
import '../../../../size_config.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.course,
  });

  final double width, aspectRatio;
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionalScreenWidth(20)),
      child: SizedBox(
        width: getProportionalScreenWidth(width),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRatio,
              child: Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  course.images[0],
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: getProportionalScreenWidth(3),
            ),
            Text(
              //textAlign: TextAlign.center,
              course.title,
              style: TextStyle(color: Colors.black, fontSize: 20),
              maxLines: 2,
            ),
            SizedBox(
              height: getProportionalScreenWidth(3),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "₦${course.price}",
                  style: TextStyle(
                      fontSize: getProportionalScreenWidth(20),
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
                InkWell(
                  onTap: () {
                    //shows interested
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: getProportionalScreenWidth(28),
                    height: getProportionalScreenWidth(28),
                    decoration: BoxDecoration(
                        color: kSecoundaryColor.withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.workspace_premium,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
