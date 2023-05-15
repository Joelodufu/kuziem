import 'package:flutter/material.dart';

class ClassModel {
  final String title, id, link, course;
  final List<String> questions, feedBacks, conversations;
  final bool classDoneWith;
  final DateTime startTime, endTime;

  const ClassModel({
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

List<ClassModel> demoCLasses = [
  ClassModel(
      title: "Introduction",
      course: "001", //the ID of the course it belongs to
      id: "class001",
      link: "httplinktovideo",
      startTime: DateTime.parse("2023-05-15 20:18:04"),
      endTime: DateTime.parse("2023-05-15 21:18:04"),
      questions: ["How Much is the cost?"]),
  ClassModel(
      title: "How to start",
      course: "001", //the ID of the course it belongs to
      id: "class001",
      link: "httplinktovideo",
      startTime: DateTime.parse("2023-05-15 20:18:04"),
      endTime: DateTime.parse("2023-05-15 21:18:04"),
      questions: ["How Much is the cost?"]),
  ClassModel(
      title: "What is needed",
      course: "001", //the ID of the course it belongs to
      id: "class001",
      link: "httplinktovideo",
      startTime: DateTime.parse("2023-05-15 20:18:04"),
      endTime: DateTime.parse("2023-05-15 21:18:04"),
      questions: ["How Much is the cost?"]),
  ClassModel(
      title: "When is best to start",
      course: "001", //the ID of the course it belongs to
      id: "class001",
      link: "httplinktovideo",
      startTime: DateTime.parse("2023-05-15 20:18:04"),
      endTime: DateTime.parse("2023-05-15 21:18:04"),
      questions: ["How Much is the cost?"]),
  ClassModel(
      title: "Examination",
      course: "001", //the ID of the course it belongs to
      id: "class001",
      link: "httplinktovideo",
      startTime: DateTime.parse("2023-05-15 20:18:04"),
      endTime: DateTime.parse("2023-05-15 21:18:04"),
      questions: ["How Much is the cost?"]),
];
