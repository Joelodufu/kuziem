import 'package:flutter/material.dart';
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
    return const Scaffold(
      body: ResponsiveLayout(
          mobilebody: MobileBody(),
          descktopbody: DescktopBody(),
          padbody: PadBody()),
    );
  }
}
