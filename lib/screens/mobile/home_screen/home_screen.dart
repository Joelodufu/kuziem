import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../enums.dart';
import '../components/costum_nav_bar.dart';
import '../components/navigator_main.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: const NavigatorMain(),
      body: Body(),
      bottomNavigationBar: CostumBottomNavbar(
        selectedMenu: MenuState.classes,
      ),
    );
  }
}
