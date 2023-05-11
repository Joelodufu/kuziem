import 'package:flutter/material.dart';

class Course {
  final double price;
  final String title,
      id,
      creator,
      book,
      duration,
      about,
      level,
      certification,
      category,
      affiliation;
  final List<String> images, colaborators, classes, requirements;

  Course(
      {required this.title,
      required this.id,
      required this.images,
      required this.creator,
      required this.book,
      required this.duration,
      required this.colaborators,
      required this.classes,
      required this.about,
      required this.price,
      required this.level,
      required this.certification,
      required this.affiliation,
      required this.category,
      required this.requirements});
}

List<Course> demoCourses = [
  Course(
      title: "Introduction to data analysis",
      id: "0001",
      category: "digital skills",
      price: 12000,
      images: [
        "assets/images/dataanalysis1.jpg",
        "assets/images/dataanalysis2.jpeg",
        "assets/images/dataanalysis3.jpeg",
        "assets/images/dataanalysis4.jpeg",
        "assets/images/dataanalysis5.jpg",
        "assets/images/dataanalysis7.jpeg"
      ],
      creator: "Joel Odufu",
      book: "h5ttt/bbok.com",
      duration: "2 months",
      colaborators: ["Google, Nigerian Institute of Data Analysis"],
      classes: [
        "classid1"
            "classid2"
            "classid3"
      ],
      about:
          "In these course you will learn the basics of Data Analysis using PYTHON Programming. The all in one guid that leads to understanding how data and machines works",
      level: "Basics to Advanced",
      certification: "British Standard for Legal Institution",
      affiliation: "Google, Nigerian Institute of Data Analysis",
      requirements: ["Laptop", "Internet Service", "Webcam", "Notebook"]),
  Course(
      title: "Electronic Technology",
      id: "0002",
      price: 12000,
      category: "engineering",
      images: [
        "assets/images/electronictech1.jpeg",
        "assets/images/electronictech2.jpeg",
        "assets/images/electronictech3.png",
        "assets/images/electronictech4.jpeg",
        "assets/images/electronictech5.jpeg",
        "assets/images/electronictech6.jpg",
        "assets/images/electronictech7.jpeg",
      ],
      creator: "Joel Odufu",
      book: "h5ttt/bbok.com",
      duration: "3 Weeks",
      colaborators: ["Google, Nigerian Institute of Data Analysis"],
      classes: ["classid1", "class002", "class002"],
      about:
          "In these course you will learn the basics of Data Analysis using PYTHON Programming. The all in one guid that leads to understanding how data and machines works",
      level: "Basics to Advanced",
      certification: "British Standard for Legal Institution",
      affiliation: "Google, Nigerian Institute of Data Analysis",
      requirements: ["Laptop", "Internet Service", "Webcam", "Notebook"]),
  Course(
      title: "Digital Painting",
      id: "0003",
      category: "digital skills",
      price: 12000,
      images: [
        "assets/images/digitalpainting1.jpeg",
        "assets/images/digitalpainting2.jpg",
        "assets/images/digitalpainting3.jpg",
        "assets/images/digitalpainting4.jpg",
        "assets/images/digitalpainting5.jpg",
        "assets/images/digitalpainting6.jpg",
        "assets/images/digitalpainting7.jpeg",
      ],
      creator: "Joel Odufu",
      book: "h5ttt/bbok.com",
      duration: "2 months",
      colaborators: ["Google, Nigerian Institute of Data Analysis"],
      classes: ["classid1", "class002", "class002"],
      about:
          "In these course you will learn the basics of Data Analysis using PYTHON Programming. The all in one guid that leads to understanding how data and machines works",
      level: "Basics to Advanced",
      certification: "British Standard for Legal Institution",
      affiliation: "Google, Nigerian Institute of Data Analysis",
      requirements: ["Laptop", "Internet Service", "Webcam", "Notebook"]),
  Course(
      title: "Android App Development",
      id: "0004",
      category: "digital skills",
      price: 12000,
      images: [
        "assets/images/androiddev.jpg",
        "assets/images/androiddev1.jpeg",
        "assets/images/androiddev2.jpeg",
        "assets/images/androiddev3.png",
        "assets/images/androiddev4.jpeg",
        "assets/images/androiddev5.jpeg",
        "assets/images/androiddev6.jpeg",
        "assets/images/androiddev7.png",
      ],
      creator: "Joel Odufu",
      book: "h5ttt/bbok.com",
      duration: "2 months",
      colaborators: ["Google, Nigerian Institute of Data Analysis"],
      classes: ["classid1", "class002", "class002"],
      about:
          "In these course you will learn the basics of Data Analysis using Dart Programming. The all in one guid that leads to understanding how data and machines works",
      level: "Basics to Advanced",
      certification: "British Standard for Legal Institution",
      affiliation: "Google, Nigerian Institute of Data Analysis",
      requirements: ["Laptop", "Internet Service", "Webcam", "Notebook"]),
  Course(
      title: "Introduction to data analysis",
      id: "0001",
      category: "digital skills",
      price: 12000,
      images: [
        "assets/images/dataanalysis1.jpg",
        "assets/images/dataanalysis2.jpeg",
        "assets/images/dataanalysis3.jpeg",
        "assets/images/dataanalysis4.jpeg",
        "assets/images/dataanalysis5.jpg",
        "assets/images/dataanalysis7.jpeg"
      ],
      creator: "Joel Odufu",
      book: "h5ttt/bbok.com",
      duration: "2 months",
      colaborators: ["Google, Nigerian Institute of Data Analysis"],
      classes: ["classid1", "class002", "class002"],
      about:
          "In these course you will learn the basics of Data Analysis using PYTHON Programming. The all in one guid that leads to understanding how data and machines works",
      level: "Basics to Advanced",
      certification: "British Standard for Legal Institution",
      affiliation: "Google, Nigerian Institute of Data Analysis",
      requirements: ["Laptop", "Internet Service", "Webcam", "Notebook"]),
];
