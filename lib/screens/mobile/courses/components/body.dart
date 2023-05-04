import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/size_config.dart';
import '../../../../model/Course.dart';
import 'course_card_small.dart';
import 'search_bar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionalScreenWidth(10)),
                child: Column(
                  children: [
                    GridView.count(
                        childAspectRatio: 0.68,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: screenWidth < 340
                            ? 1
                            : screenWidth < 480
                                ? 2
                                : 3,
                        shrinkWrap: true,
                        children: [
                          ...List.generate(
                              demoCourses.length,
                              (index) =>
                                  CoureCardSmall(course: demoCourses[index]))
                        ]),
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
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
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
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
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
                  const Icon(
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
