import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/Signup/components/social_icons.dart';

import 'or_divider.dart';

class SocialCardMain extends StatelessWidget {
  const SocialCardMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [OrDevider(), SocialCard()],
    );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(
          color: Color.fromARGB(255, 26, 62, 104),
          press: () {
            print("Facebook");
          },
        ),
        SocialIcon(
          color: Color.fromARGB(255, 114, 23, 16),
          icon: Icons.g_mobiledata,
          press: () {
            print("Google");
          },
        )
      ],
    );
  }
}
