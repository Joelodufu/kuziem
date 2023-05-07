import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../model/Message.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.message});
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Text("${message.author}");
  }
}
