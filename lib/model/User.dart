import 'ClassModel.dart';
import "Course.dart";

class User {
  final String name,
      image,
      email,
      password,
      phoneNumber,
      facebookProfile,
      instaProfile,
      twitterProfile,
      id;
  final bool isATeacher;
  final List<ClassModel> myClasses;
  final List<Course> myCourses;

  const User({
    required this.email,
    required this.password,
    this.phoneNumber = "",
    this.instaProfile = "",
    this.twitterProfile = "",
    this.facebookProfile = "",
    required this.name,
    this.image = "",
    required this.id,
    this.myClasses = const [],
    this.myCourses = const [],
    this.isATeacher = false,
  });
}

List<User> dummyUsers = [
  User(
      email: "joel.odufu@ust.edu.ng",
      password: "MyStrongPassword",
      name: "Joel Odufu",
      id: "001",
      image: "assets/images/ekowoicho.jpg",
      myClasses: [
        ...demoCourses[0].classes
      ],
      myCourses: [
        demoCourses[0],
        demoCourses[1],
        demoCourses[2],
        demoCourses[3],
      ]),
  User(
      email: "samuel.anderson@gmail.com",
      password: "MyStrongPassword",
      name: "Samuiel Anderson",
      id: "001",
      image: "assets/images/profile.jpeg",
      myClasses: [
        demoCLasses[0],
        demoCLasses[1],
        demoCLasses[2],
      ],
      myCourses: [
        demoCourses[0],
        demoCourses[1],
        demoCourses[2],
        demoCourses[3],
      ]),
];
