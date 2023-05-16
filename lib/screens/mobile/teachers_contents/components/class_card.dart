import 'package:flutter/material.dart';

import '../../../../constants.dart';

class classCard extends StatelessWidget {
  final String title;
  final String date;
  final String startTime;
  final String closingTime;

  classCard({
    required this.title,
    required this.date,
    required this.startTime,
    required this.closingTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
            ),
            Divider(),
            SizedBox(height: 5.0),
            Text(
              'Date: $date',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 5.0),
            Text(
              'Start: $startTime',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 5.0),
            Text(
              'Close: $closingTime',
              style: TextStyle(fontSize: 14.0, color: kSecoundaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
