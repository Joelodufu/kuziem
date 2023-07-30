import 'package:flutter/material.dart';
import 'package:kuziem/helperFunction.dart';
import 'package:kuziem/screens/mobile/login/login.dart';
import 'package:kuziem/screens/mobile/profile/components/profile_pic.dart';
import 'package:kuziem/widgets.dart';
import '../../../../constants.dart';
import '../../../../model/User.dart';
import '../../../../services/auth_service.dart';
import '../../components/rounded_button.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  AuthService authService = AuthService();
  String userName = "";
  String email = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gettingUserData();
  }

  gettingUserData() async {
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });

    await HelperFunctions.getUserUserNameFromSF().then((value) {
      setState(() {
        userName = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileHeader(email: email, userName: userName),
        const SizedBox(
          height: 10,
        ),
        RoundButton(
          text: "Sign Out",
          press: () async {
            await authService.signOut();
            nextScreenReplace(context, Login());
          },
        )
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.email,
    required this.userName,
  });
  final String email;
  final String userName;
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
                    ProfilePic(),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      userName,
                      style: const TextStyle(fontSize: 28, color: Colors.white),
                    ),
                    Text(
                      email,
                      style: const TextStyle(fontSize: 16, color: Colors.white),
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
