import 'package:flutter/material.dart';
import 'package:kuziem/screens/mobile/profile/components/profile_pic.dart';

import '../../../../constants.dart';
import '../../../../model/User.dart';
import '../../components/rounded_button.dart';
import '../../login/login.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileHeader(
          user: dummyUsers[1],
        ),
        SizedBox(
          height: 10,
        ),
        RoundButton(
          text: "Sign Out",
          press: () {
            Navigator.pushNamed(context, Login.routeName);
          },
        )
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.user,
  });
  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: kPrimaryColor,
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: InkWell(
              onTap: () {},
              child: Container(
                color: kPrimaryColor,
                padding: EdgeInsets.only(
                    top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
                child: Column(
                  children: [
                    ProfilePic(
                      image: user.image,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      user.name,
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                    Text(
                      user.email,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
