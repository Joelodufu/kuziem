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
              const SearchBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionalScreenWidth(10)),
                child: Column(
                  children: [
                    GridView.count(
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
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
