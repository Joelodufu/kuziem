import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kuziem/utils/responsive/descktop_body.dart';
import 'package:kuziem/utils/responsive/mobile_body.dart';
import 'package:kuziem/utils/responsive/pad_body.dart';
import 'package:kuziem/utils/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(
          mobilebody: MobileBody(),
          descktopbody: DescktopBody(),
          padbody: PadBody()),
    );
  }
}
