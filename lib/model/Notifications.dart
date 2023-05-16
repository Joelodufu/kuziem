class Notifications {
  final String title, message;

  Notifications({required this.message, required this.title});
}

List<Notifications> myNotifications = [
  Notifications(title: "New Course", message: "Basic Software Development"),
  Notifications(
      title: "Next Class", message: "Your Next Class is in 5 minuites"),
  Notifications(
      title: "Community",
      message: "There is a new question that might interest you"),
  Notifications(title: "Comunity", message: "Your Question has 3 response"),
  Notifications(title: "Comunity", message: "Your Question is Destroyed"),
  Notifications(title: "Congrats", message: "You have a new Student"),
];
