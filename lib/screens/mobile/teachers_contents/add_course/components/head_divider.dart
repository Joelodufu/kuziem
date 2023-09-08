import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class HeadDivider extends StatelessWidget {
  const HeadDivider({super.key, required this.headerText});
  final String headerText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          Padding(
             padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              headerText,
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          buildDivider()
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
        child: Divider(
      color: Color.fromARGB(255, 187, 187, 187),
      height: 1.5,
    ));
  }
}