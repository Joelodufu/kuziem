import 'package:flutter/material.dart';

class BotMessage {
  final String author, text;
  final DateTime startTime;
  BotMessage({
    required this.author,
    required this.text,
    required this.startTime,
  });
}

List<BotMessage> botMessages = [];
