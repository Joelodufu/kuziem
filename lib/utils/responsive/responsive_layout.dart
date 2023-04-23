import 'package:flutter/material.dart';

import '../../constants.dart';

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
      if (constraints.maxWidth < kMobilewidth) {
        return mobilebody;
      } else if (constraints.maxWidth < kTabwidth) {
        return padbody;
      } else
        return descktopbody;
    });
  }
}
