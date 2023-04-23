import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/login/login.dart';

import '../../utils/responsive/mobile/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({
    super.key,
  });

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SplashScreen(),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 203,
                image: AssetImage('assets/images/logolight.png'),
              ),
              SizedBox(
                height: 31,
              ),
              Text(
                'Education at your fingertips, anytime, anywhere',
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w200,
                  fontSize: 32,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
