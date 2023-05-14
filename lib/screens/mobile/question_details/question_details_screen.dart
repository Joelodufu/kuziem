import 'package:flutter/material.dart';
import 'package:kuziem/model/Message.dart';

import '../../../enums.dart';
import '../components/costum_nav_bar.dart';
import '../components/navigator_main.dart';
import './components/body.dart';

class QuestionDetailsScreen extends StatelessWidget {
  const QuestionDetailsScreen({super.key, required this.message});
  static String routeName = "/message_details";
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Questions"),
        ),
        body: Body(
          message: message,
        ),
        bottomNavigationBar: const CostumBottomNavbar(
          selectedMenu: MenuState.home,
        ));
  }
}
