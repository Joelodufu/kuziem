import 'package:flutter/material.dart';
import 'package:kuziem/enums.dart';
import 'package:kuziem/screens/mobile/components/costum_nav_bar.dart';
import './components/body.dart';

class RegisterFormScreen extends StatelessWidget {
  static String routeName = "/register_form";
  const RegisterFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register as a Teacher"),
      ),
      body: Body(),
      bottomNavigationBar:
          const CostumBottomNavbar(selectedMenu: MenuState.settings),
    );
  }
}
