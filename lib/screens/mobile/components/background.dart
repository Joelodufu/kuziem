import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipPath(
            clipper: CustomClipPath2(),
            child: Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 211, 211, 211)),
            ),
          ),
          ClipPath(
            clipper: CustomClipPath1(),
            child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 2, 65, 124)),
            ),
          ),
          Positioned(
            top: 70,
            child: Image(
              image: AssetImage('assets/images/logolight.png'),
              width: 200,
            ),
          ),
          child
        ],
      ),
    );
  }
}

class CustomClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height / 4;

    final path = Path();

    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h - 50, w, h);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomClipPath2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = 30 + size.height / 4;

    final path = Path();

    path.lineTo(0, h - 20);
    path.quadraticBezierTo(w * 0.5, h - 50, w, h + 10);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
