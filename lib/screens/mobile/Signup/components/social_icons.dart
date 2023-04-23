import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback press;
  const SocialIcon({
    super.key,
    this.icon = Icons.facebook_rounded,
    required this.press,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: color),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 20,
          color: color,
        ),
      ),
    );
  }
}
