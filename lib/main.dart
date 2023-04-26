import 'package:flutter/material.dart';
import 'package:kuziem/routes.dart';
import 'package:kuziem/screens/mobile/splash/splashscreenpage.dart';
import 'package:kuziem/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kuziem App",
      debugShowCheckedModeBanner: false,

      //home: SplashScreenPage(),
      theme: theme(),
      initialRoute: SplashScreenPage.routeName,
      routes: routes,
    );
  }
}
