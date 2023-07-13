import 'package:flutter/material.dart';
import 'package:kuziem/constants.dart';

showSnack(context, String title, bool success) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: success ? kPrimaryColor : Colors.red,
      content:
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold))));
}
