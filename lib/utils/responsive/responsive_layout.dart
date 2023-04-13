import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kuziem/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobilebody,
      required this.descktopbody,
      required this.padbody});

  final Widget descktopbody;
  final Widget mobilebody;
  final Widget padbody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobilewidth) {
        return mobilebody;
      } else if (constraints.maxWidth < tabwidth) {
        return padbody;
      } else
        return descktopbody;
    });
  }
}
