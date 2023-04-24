import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../Signup/components/social_icons.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(press: () {}, color: kPrimaryColor),
        SocialIcon(
          press: () {},
          color: kPrimaryColor,
          icon: Icons.g_mobiledata_sharp,
        ),
      ],
    );
  }
}
