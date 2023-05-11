
import 'package:flutter/material.dart';

class ProfileCircularImage extends StatelessWidget {
  const ProfileCircularImage({
    super.key,
    required this.imageUrl,
    this.profileize = 40,
  });
  final String imageUrl;
  final double profileize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: profileize,
      width: profileize,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
              blurRadius: 2,
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2),
        ],
        border: Border.all(width: 4, color: Colors.white),
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
