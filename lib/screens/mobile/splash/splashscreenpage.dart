import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kuziem/helperFunction.dart';
import 'package:kuziem/screens/mobile/login/login.dart';
import 'package:kuziem/size_config.dart';

import '../student_home/student_home_screen.dart';
import 'components/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  static String routeName = "/splash";

  SplashScreenPage({
    super.key,
  });

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  bool _isSignedIn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserLoggedInStatus();

    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>
                _isSignedIn ? StudentHomeScreen() : Login())));
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
    final messages = <String>[
      " Learn from real time teachers and have your questions answered in real time.",
      " Come and learn with a token. And learn from experienced teachers",
      " Teachers are paid 80% and are verified as professional teachers ",
      " Real time 10 min self destruct discussion room, to have all your questions answered by the Kuziém community ",
      " For every effective response you have or in finding solutions to someone’s problem on the Kuziém self destruct discussion room, you get paid. ",
      " Learning is limitless, continuous and has no boundary, at Kuziém we have no boundary. ",
      " If you can teach it, then someone can learn it. ",
      " Don’t teach for free. Kuziém pay you to teach. ",
      " You don’t have to be a professional teacher to teach on Kuziém, if you have the skills, experience and you can teach it, then you can earn to teach it.",
      " At Kuziém we believe, Every student is a teacher and every teacher is a student. Learning is continuous and limitless.",
      " Don’t hoard your skill, pass it on. Kuziém would pay you to pass it on"
    ];

    SizeConfig().init(context);
    return Scaffold(
        body: Stack(
      children: [
        SplashScreen(),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                width: 203,
                image: AssetImage('assets/images/logolight.png'),
              ),
              const SizedBox(
                height: 31,
              ),
              Text(
                messages[Random().nextInt(messages.length)],
                style: const TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w200,
                  fontSize: 20,
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
