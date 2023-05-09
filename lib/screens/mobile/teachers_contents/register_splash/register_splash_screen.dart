import 'package:flutter/material.dart';
import 'package:kuziem/enums.dart';
import 'package:kuziem/screens/mobile/components/costum_nav_bar.dart';
import './components/body.dart';

class RegisterSplashScreen extends StatelessWidget {
  static String routeName = "/register_splash";
  const RegisterSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Become a Teacher"),
      ),
      body: const Body(),
      
      bottomNavigationBar:
          const CostumBottomNavbar(selectedMenu: MenuState.settings),
    );
  }
}
