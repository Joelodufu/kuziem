import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
