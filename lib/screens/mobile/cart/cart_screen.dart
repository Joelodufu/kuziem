import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../components/rounded_button.dart';
import '../courses/courses_screen.dart';
import './components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
        ),
        body: const Body(),
        bottomNavigationBar: const CheckOutCard());
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionalScreenWidth(15),
          vertical: getProportionalScreenWidth(30)),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: Colors.black.withOpacity(.2))
      ]),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: getProportionalScreenWidth(40),
                  width: getProportionalScreenWidth(40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 238, 236, 236)),
                  child: const Center(
                    child: Icon(
                      Icons.badge,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, CoursesScreen.routeName);
                    },
                    child: const Text("Register More Courses")),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kTextColor,
                )
              ],
            ),
            SizedBox(
              height: getProportionalScreenWidth(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(TextSpan(text: "Total: ", children: [
                  TextSpan(
                      text: "₦12,00000",
                      style: TextStyle(fontSize: 16, color: Colors.black))
                ])),
                SizedBox(
                  width: getProportionalScreenWidth(190),
                  child: RoundButton(
                    press: () {},
                    text: 'Check Out',
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
