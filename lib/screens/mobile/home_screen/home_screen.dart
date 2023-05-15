import 'package:flutter/material.dart';
import '../../../enums.dart';
import '../cart/cart_screen.dart';
import '../components/costum_nav_bar.dart';
import '../components/icon_btn_with_count.dart';
import '../components/navigator_main.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
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
      drawer: const NavigatorMain(),
      body: const Body(),
      bottomNavigationBar: const CostumBottomNavbar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
