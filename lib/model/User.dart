import 'package:flutter/material.dart';

class User {
  final String name, image, id;
  final List<String> certificats, courses;
  final bool isATeacher;

  const User({
    required this.name,
    this.image = "",
    required this.id,
    this.certificats = const [],
    this.courses = const [],
    this.isATeacher = false,
  });
}

List<User> dummyUsers = [
  const User(name: "Joel Lee", id: "001"),
  const User(name: "Samuel Ochai", id: "002"),
  const User(name: "John Johnson", id: "003"),
  const User(name: "Joseph Allowee", id: "004"),
  const User(name: "Sunday ALoko", id: "005"),
];
