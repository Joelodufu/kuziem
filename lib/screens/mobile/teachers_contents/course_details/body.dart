import 'package:flutter/material.dart';
import 'package:kuziem/model/Course.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buidCourseCost(size),
            SizedBox(
              width: 15,
            ),
            buildStudentNumbers(size)
          ],
        )
      ],
    );
  }

  Stack buildStudentNumbers(Size size) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: size.width * 0.4,
          height: size.width * 0.4,
          color: const Color.fromARGB(255, 227, 232, 233),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      "Registered Students",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                  Text(
                    "${course.registeredStudents.length}",
                    style: TextStyle(
                        color: Color.fromARGB(255, 75, 76, 77),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "STUDENTS",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: -6,
          top: -6,
          child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 12, 197, 111),
                  shape: BoxShape.circle,
                  border: Border.all(width: 3, color: Colors.white)),
              child: const Center(
                child: Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),
              )),
        )
      ],
    );
  }

  Stack buidCourseCost(Size size) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: size.width * 0.4,
          height: size.width * 0.4,
          color: const Color.fromARGB(255, 227, 232, 233),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      "Cost",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                  Text(
                    "₦${course.price}",
                    style: TextStyle(
                        color: Color.fromARGB(255, 78, 124, 138),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "PRICE",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: -6,
          top: -6,
          child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 21, 76, 121),
                  shape: BoxShape.circle,
                  border: Border.all(width: 3, color: Colors.white)),
              child: const Center(
                child: Text(
                  "₦",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )),
        )
      ],
    );
  }
}
