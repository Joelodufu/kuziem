import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getProportionalScreenWidth(20),
          vertical: getProportionalScreenWidth(20)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionalScreenWidth(15),
          vertical: getProportionalScreenWidth(20)),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 216, 216, 216),
          borderRadius: BorderRadius.circular(16)),
      child: const Text.rich(TextSpan(
          text: "Starter Booster \n",
          style: TextStyle(color: kPrimaryColor),
          children: [
            TextSpan(
                text: "cashback 20%",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ])),
    );
  }
}
