import 'package:flutter/material.dart';

import '../../../constants.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color background, color;
  const RoundButton({
    super.key,
    required this.text,
    required this.press,
    this.background = kPrimaryColor,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.8,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
                foregroundColor: MaterialStateProperty.all(color),
                backgroundColor: MaterialStateProperty.all(background),
              ),
              onPressed: press,
              child: Text(text),
            )));
  }
}
