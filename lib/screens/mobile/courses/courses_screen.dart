import 'package:flutter/material.dart';
import '../../../enums.dart';
import '../cart/cart_screen.dart';
import '../components/costum_nav_bar.dart';
import '../components/icon_btn_with_count.dart';
import '../components/navigator_main.dart';
import './components/body.dart';

class CoursesScreen extends StatelessWidget {
  static String routeName = "/courses";
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latest Courses"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButtonWithCount(
              icon: Icons.local_mall_outlined,
              press: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              numberOfItems: 10,
            ),
          )
        ],
      ),
      body: const Body(),
      drawer: const NavigatorMain(),
      bottomNavigationBar: const CostumBottomNavbar(
        selectedMenu: MenuState.classes,
      ),
    );
  }
}
