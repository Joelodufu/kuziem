import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/screens/student_home/components/categories.dart';
import 'package:kuziem/size_config.dart';
import 'course_card.dart';
import 'search_bar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top: getProportionalScreenHeight(15)),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 226, 228, 231),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              SearchBar(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionalScreenWidth(10)),
                child: Column(
                  children: [
                    buildSessionHeader("Category"),
                    Categories(),
                    Divider(),
                    buildSessionHeader("Most Recent"),
                    CourseCard(),
                    CourseCard(),
                    CourseCard(),
                    CourseCard(),
                    CourseCard(),
                  ],
                ),
              )
            ]),
          ),
        )
      ],
    );
  }

  Container buildSessionHeader(String header) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(
          vertical: getProportionalScreenWidth(25),
          horizontal: getProportionalScreenWidth(10)),
      child: Text(
        header,
        style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
      ),
    );
  }
}

class CoursesWidget extends StatelessWidget {
  const CoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                          fontSize: getProportionalScreenWidth(14),
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(
                    "assets/images/data_analysis.png",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: getProportionalScreenWidth(8)),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Introduction to Data Analysis",
                  style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Write description of course",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("\#44,000")],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
