import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/screens/mobile/components/rounded_button.dart';
import 'package:kuziem/size_config.dart';

import '../../login/login.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: getProportionalScreenWidth(30)),
      alignment: Alignment.center,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Image(
              image: const AssetImage(
                "assets/images/success.png",
              ),
              height: SizeConfig.screenHeight * 0.4),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          Text(
            "Login Success",
            style: TextStyle(
                fontSize: getProportionalScreenWidth(30),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          SizedBox(
              width: SizeConfig.screnWidth * 0.6,
              child: RoundButton(
                  text: "Back to home",
                  press: () {
                    Navigator.popAndPushNamed(context, Login.routeName);
                  }))
        ],
      ),
    );
  }
}
