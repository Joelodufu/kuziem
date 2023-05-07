import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/size_config.dart';

import '../../../../model/Course.dart';
import '../../components/rounded_button.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.course});
  final Course course;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  int index = 0;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Stack(children: [
            Container(
              padding: const EdgeInsets.all(0),
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.only(top: size.height * 0.02),
              height: size.height * 0.4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
              ),
              child: Image(
                image: AssetImage(widget.course
                    .images[Random().nextInt(widget.course.images.length)]),
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.3),
              height: getProportionalScreenHeight(500),
              width: size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(25))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 2,
                    width: 50,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuIcon(
                        isActive: index == 0 ? true : false,
                        icon: Icons.keyboard_double_arrow_down,
                        press: () {
                          setState(() {
                            index = 0;
                          });
                        },
                      ),
                      MenuIcon(
                        isActive: index == 1 ? true : false,
                        icon: Icons.brightness_2,
                        press: () {
                          setState(() {
                            index = 1;
                          });
                        },
                      ),
                      MenuIcon(
                        isActive: index == 2 ? true : false,
                        icon: Icons.home_repair_service,
                        press: () {
                          setState(() {
                            index = 2;
                          });
                        },
                      ),
                      MenuIcon(
                        isActive: index == 3 ? true : false,
                        icon: Icons.workspace_premium,
                        press: () {
                          setState(() {
                            index = 3;
                          });
                        },
                      ),
                      MenuIcon(
                        isActive: index == 4 ? true : false,
                        icon: Icons.diversity_2,
                        press: () {
                          setState(() {
                            index = 4;
                          });
                        },
                      ),
                      MenuIcon(
                        isActive: index == 5 ? true : false,
                        icon: Icons.today,
                        press: () {
                          setState(() {
                            index = 5;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: Container(
                    width: size.width,
                    color: const Color.fromARGB(255, 230, 230, 230),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        buildHeader(),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: index == 2
                              ? buildRequirements()
                              : index == 5
                                  ? Column(
                                      children: [
                                        ...List.generate(
                                            widget.course.classes.length,
                                            (index) => Text(
                                                widget.course.classes[index]))
                                      ],
                                    )
                                  : buildTextPropertiesOfCOurses(),
                        )
                      ],
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RoundButton(
                      press: () {},
                      text: 'Register',
                    ),
                  )
                ],
              ),
            ),
          ]),
        )
      ],
    );
  }

  Column buildRequirements() {
    return Column(
      children: [
        ...List.generate(widget.course.requirements.length,
            (index) => Text(widget.course.requirements[index]))
      ],
    );
  }

  Text buildTextPropertiesOfCOurses() {
    return Text(
      index == 0
          ? widget.course.about
          : index == 1
              ? widget.course.level
              : index == 3
                  ? widget.course.certification
                  : index == 4
                      ? widget.course.affiliation
                      : "",
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }

  Text buildHeader() {
    return Text(
      index == 0
          ? "ABOUT"
          : index == 1
              ? "LEVEL"
              : index == 2
                  ? "REQUIREMENTS"
                  : index == 3
                      ? "CERTIFICATION "
                      : index == 4
                          ? "AFFILIATION/PARTNERSHIP"
                          : "CLASSES",
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryColor),
    );
  }
}

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    super.key,
    this.isActive = false,
    required this.icon,
    required this.press,
  });
  final bool isActive;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(4),
        height: isActive ? 40 : 30,
        width: isActive ? 40 : 30,
        decoration: BoxDecoration(
          color: isActive ? Colors.red : Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: CircleAvatar(
          child: Icon(
            icon,
            size: isActive ? 20 : 15,
          ),
        ),
      ),
    );
  }
}