import 'package:flutter/material.dart';
import 'package:kuziem/model/Course.dart';

import '../../components/rounded_button.dart';
import '../components/class_card.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
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
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                classCard(
                  title: 'Introduction',
                  date: 'May 18, 2023',
                  startTime: '11:00 AM',
                  closingTime: '12:30 PM',
                ),
                classCard(
                  title: 'The Begining',
                  date: 'May 18, 2023',
                  startTime: '11:00 AM',
                  closingTime: '12:30 PM',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              classCard(
                title: 'The First',
                date: 'May 18, 2023',
                startTime: '11:00 AM',
                closingTime: '12:30 PM',
              ),
              classCard(
                title: 'The Second',
                date: 'May 18, 2023',
                startTime: '11:00 AM',
                closingTime: '12:30 PM',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              classCard(
                title: 'Summary',
                date: 'May 18, 2023',
                startTime: '11:00 AM',
                closingTime: '12:30 PM',
              ),
              classCard(
                title: 'Conclution',
                date: 'May 18, 2023',
                startTime: '11:00 AM',
                closingTime: '12:30 PM',
              ),
            ],
          ),
          RoundButton(
            press: () {},
            text: "Add More Class",
          ),
          Divider(),
          Column(
            children: [
              Text(
                "Course Images",
                style: TextStyle(fontSize: 20),
              ),
              ...List.generate(
                course.images.length,
                (index) => Card(
                    child: Image.asset(
                  course.images[index],
                  width: size.width * 0.8,
                )),
              )
            ],
          )
        ],
      ),
    );
  }

  Stack buildStudentNumbers(Size size) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: size.width * 0.4,
          color: const Color.fromARGB(255, 227, 232, 233),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Registered Students",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
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
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                  Text(
                    "${course.registeredStudents.length}",
                    style: const TextStyle(
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
                        fontSize: 20,
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
                  color: const Color.fromARGB(255, 12, 197, 111),
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
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "₦${course.price}",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 78, 124, 138),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
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
                        fontSize: 20,
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
