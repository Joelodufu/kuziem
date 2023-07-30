import 'package:flutter/material.dart';
import 'package:kuziem/helperFunction.dart';
import 'package:kuziem/routes.dart';
import 'package:kuziem/screens/mobile/splash/splashscreenpage.dart';
import 'package:kuziem/theme.dart';
import "package:firebase_core/firebase_core.dart";
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSignedIn = value;
        });
      }
    });
  }

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
