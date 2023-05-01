import 'package:flutter/material.dart';
import 'package:kuziem/screens/student_home/components/categories.dart';
import 'package:kuziem/screens/student_home/components/discount_banner.dart';
import 'package:kuziem/size_config.dart';
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
          DiscountBanner(),
          SessionHeader(
              sessionTitle: "Categories",
              press: () {
                //send to courses page with interest cargories selected
              }),
          Categories(),
          SessionHeader(
            sessionTitle: "Special for you",
            press: () {
              //send to courses page with interest cargories selected
            },
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpecialOfferCard(
                  image: "assets/images/android.jpeg",
                  category: "Digital Skills",
                  numberOfCourses: 23,
                  press: () {
                    //route to courses that offers the cartegory
                  },
                ),
                SpecialOfferCard(
                  image: "assets/images/androids.png",
                  category: "Digital Skills",
                  numberOfCourses: 23,
                  press: () {
                    //route to courses that offers the cartegory
                  },
                ),
                SpecialOfferCard(
                  image: "assets/images/android.jpeg",
                  category: "Digital Skills",
                  numberOfCourses: 23,
                  press: () {
                    //route to courses that offers the cartegory
                  },
                ),
              ],
            ),
          )
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
