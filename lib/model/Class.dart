import 'package:flutter/material.dart';

class CourseClass {
  final String title, id, link, startTime, endTime, course;
  final List<String> questions, feedBacks, conversations;
  final bool classDoneWith;

  const CourseClass({
    required this.title,
    required this.course,
    required this.id,
    required this.link,
    required this.startTime,
    required this.endTime,
    this.questions = const [],
    this.feedBacks = const [],
    this.conversations = const [],
    this.classDoneWith = false,
  });
}

List<CourseClass> classes = [
  const CourseClass(
      title: "Introduction",
      course: "001", //the ID of the course it belongs to
      id: "001",
      link: "httplinktovideo",
      startTime: "StartTimeTimeStamp",
      endTime: "EndTimeTimeStamp",
      questions: ["How Much is the cost"]),
  const CourseClass(
      title: "Data Mining",
      course: "001", //the ID of the course it belongs to
      id: "002",
      link: "httplinktovideo",
      startTime: "StartTimeTimeStamp",
      endTime: "EndTimeTimeStamp"),
  const CourseClass(
      title: "Introduction to Python",
      course: "001", //the ID of the course it belongs to
      id: "003",
      link: "httplinktovideo",
      startTime: "StartTimeTimeStamp",
      endTime: "EndTimeTimeStamp"),
  const CourseClass(
      title: "Data Presentation",
      course: "001", //the ID of the course it belongs to
      id: "004",
      link: "httplinktovideo",
      startTime: "StartTimeTimeStamp",
      endTime: "EndTimeTimeStamp"),
  const CourseClass(
      title: "Conclution/Summary",
      course: "001", //the ID of the course it belongs to
      id: "005",
      link: "httplinktovideo",
      startTime: "StartTimeTimeStamp",
      endTime: "EndTimeTimeStamp"),
];
