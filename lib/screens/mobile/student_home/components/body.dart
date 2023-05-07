import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/course_details/course_details_screen.dart';
import 'package:kuziem/screens/mobile/student_home/components/discount_banner.dart';
import 'package:kuziem/size_config.dart';
import '../../../../model/Course.dart';
import '../../courses/courses_screen.dart';
import './course_card.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionalScreenWidth(20),
          ),
          const HomeHeader(),
          const DiscountBanner(),

          //Categories(),
          SessionHeader(
              sessionTitle: "Digital Skills Courses",
              press: () {
                //take to list of courses from lates
                Navigator.pushNamed(context, CoursesScreen.routeName);
              }),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                    demoCourses.length,
                    (index) => CourseCard(
                          course: demoCourses[index],
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CourseDetailsScreen(
                                        course: demoCourses[index])));
                          },
                        ))
              ],
            ),
          ),
          SizedBox(
            height: getProportionalScreenWidth(20),
          ),
          SessionHeader(
              sessionTitle: "Digital Skills Courses",
              press: () {
                //take to list of courses from lates
                Navigator.pushNamed(context, CoursesScreen.routeName);
              }),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                    demoCourses.length,
                    (index) => CourseCard(
                          course: demoCourses[index],
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CourseDetailsScreen(
                                        course: demoCourses[index])));
                          },
                        ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.numberOfCourses,
    required this.press,
  });
  final String category, image;
  final int numberOfCourses;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionalScreenWidth(20)),
      child: SizedBox(
        width: getProportionalScreenWidth(242),
        height: getProportionalScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.7)
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionalScreenWidth(15),
                  vertical: getProportionalScreenWidth(10)),
              child: Text.rich(
                TextSpan(style: TextStyle(color: Colors.white), children: [
                  TextSpan(
                      text: "$category\n",
                      style: TextStyle(
                          fontSize: getProportionalScreenWidth(18),
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: "$numberOfCourses",
                  ),
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class SessionHeader extends StatelessWidget {
  const SessionHeader({
    super.key,
    required this.sessionTitle,
    required this.press,
  });
  final String sessionTitle;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sessionTitle,
                style: TextStyle(
                    fontSize: getProportionalScreenWidth(18),
                    color: Colors.black),
              ),
              InkWell(onTap: press, child: Text("See More"))
            ],
          ),
        ),
        SizedBox(
          height: getProportionalScreenWidth(20),
        ),
      ],
    );
  }
}
