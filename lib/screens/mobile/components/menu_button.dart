import 'package:flutter/material.dart';

import '../student_home/student_home_screen.dart';

class MenuBotton extends StatelessWidget {
  final String text, route;
  final IconData icon;
  const MenuBotton({
    super.key,
    required this.text,
    required this.route,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      trailing: Icon(Icons.arrow_circle_right_outlined),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
