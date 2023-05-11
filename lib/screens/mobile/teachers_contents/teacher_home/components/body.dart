import 'package:flutter/material.dart';
import '../../../../../model/Course.dart';
import '../../components/my_course_card.dart';
import '../../components/profile_circular_image.dart';
import 'my_student_banner.dart';

class Body extends StatelessWidget {
  Body({super.key});
  List<Course> myCOurses =
      demoCourses.where((course) => course.creator == "Joel Odufu").toList();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: MyStudentsBanner(),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NextCourse(size: size),
                  const SizedBox(
                    width: 10,
                  ),
                  buildRevenue(size),
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 232, 233, 235)),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "My Coureses",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ...List.generate(
                                myCOurses.length,
                                (index) => MyCourseCard(
                                    title: myCOurses[index].title,
                                    image: myCOurses[index].images[0],
                                    isDone: myCOurses[index].isDone,
                                    students: myCOurses[index]
                                        .registeredStudents
                                        .length))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Stack buildRevenue(Size size) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: size.width * 0.46,
          height: size.width * 0.46,
          color: const Color.fromARGB(255, 227, 232, 233),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      "General Revenue",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                  Text(
                    "Payed: 253, 0000",
                    style: TextStyle(color: Colors.black),
                  )
                ],
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

class NextCourse extends StatelessWidget {
  const NextCourse({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: size.width * 0.46,
          height: size.width * 0.46,
          color: const Color.fromARGB(255, 227, 232, 233),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      "Introduction\nto Digital\nPainting",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        Positioned(
                          child: ProfileCircularImage(
                            imageUrl: "assets/images/joellee.jpg",
                            profileize: 30,
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: ProfileCircularImage(
                            imageUrl: "assets/images/joellee.jpg",
                            profileize: 30,
                          ),
                        ),
                        Positioned(
                          left: 40,
                          child: ProfileCircularImage(
                            imageUrl: "assets/images/joellee.jpg",
                            profileize: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                  Text(
                    "May 24, 2023",
                    style: TextStyle(color: Colors.black),
                  )
                ],
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
                color: const Color.fromARGB(255, 39, 104, 41),
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: Colors.white)),
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
