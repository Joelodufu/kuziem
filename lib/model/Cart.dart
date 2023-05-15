import 'Course.dart';

class Cart {
  final Course course;
  final int numOfItems;

  Cart({required this.course, required this.numOfItems});
}

List<Cart> demoCarts = [
  Cart(course: demoCourses[0], numOfItems: 2),
  Cart(course: demoCourses[1], numOfItems: 0),
  Cart(course: demoCourses[2], numOfItems: 1),
  Cart(course: demoCourses[4], numOfItems: 3),
];
