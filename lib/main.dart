import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/routes.dart';
import 'package:kuziem/screens/mobile/splash/splashscreenpage.dart';

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

ThemeData theme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
        elevation: 0,
        color: kPrimaryColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: Colors.white),
        toolbarTextStyle: TextStyle(fontSize: 18, color: kSecoundaryColor)),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Roboto",
    textTheme: const TextTheme(
        bodyLarge: TextStyle(color: kTextColor),
        bodyMedium: TextStyle(color: kTextColor)),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
