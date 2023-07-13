import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';
import 'package:kuziem/screens/mobile/teachers_contents/register_form/register_form_screen.dart';
import '../../../components/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: size.height * 0.3,
                width: size.width,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(150),
                          bottomRight: Radius.circular(150))),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(150))),
                child: const Padding(
                  padding: EdgeInsets.all(80),
                  child:
                      Image(image: AssetImage("assets/images/logolight.png")),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: (size.width * 0.5) - 75, top: (size.height * 0.3) - 55),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.7),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(80))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: (size.width * 0.5) - 60, top: (size.height * 0.3) - 40),
              child: SizedBox(
                height: 120,
                width: 120,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Image(
                        image:
                            AssetImage("assets/images/Icon-maskable-192.png")),
                  ),
                ),
              ),
            ),
          ],
          
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Register as a Teacher",
          style: TextStyle(fontSize: 25),
        ),
        const SizedBox(
          height: 50,
        ),
        RoundButton(
          text: "Get Started",
          press: () {
            // direct to registration form
            Navigator.pushNamed(context, RegisterFormScreen.routeName);
          },
        )
      ],
    );
  }
}
