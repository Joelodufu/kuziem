import 'package:flutter/material.dart';

import '../../screens/mobile/splash/components/splashscreen.dart';

class PadBody extends StatelessWidget {
  const PadBody({super.key});

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
                image: AssetImage('src/images/logolight.png'),
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
