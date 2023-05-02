import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class IconButtonWithCount extends StatelessWidget {
  const IconButtonWithCount({
    super.key,
    required this.icon,
    this.numberOfItems = 0,
    required this.press,
  });

  final IconData icon;
  final int numberOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: getProportionalScreenWidth(46),
            width: getProportionalScreenWidth(46),
            decoration: const BoxDecoration(
                color: Color.fromARGB(159, 236, 236, 236),
                shape: BoxShape.circle),
            child: Icon(icon),
          ),
          if (numberOfItems != 0)
            Positioned(
              right: 0,
              top: -3,
              child: Container(
                height: getProportionalScreenWidth(18),
                width: getProportionalScreenWidth(18),
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "$numberOfItems",
                    style: TextStyle(
                        fontSize: getProportionalScreenWidth(10),
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
