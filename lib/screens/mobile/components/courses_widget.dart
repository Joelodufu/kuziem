import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

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
                child: const Text(
                  "Introduction to Data Analysis",
                  style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Write description of course",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text("\#44,000")],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
