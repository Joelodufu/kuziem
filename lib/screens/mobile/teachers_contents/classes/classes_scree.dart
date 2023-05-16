import 'package:flutter/material.dart';

import '../components/class_card.dart';

class ProgramScheduleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // Number of columns in the grid
      crossAxisSpacing: 10.0, // Spacing between columns
      mainAxisSpacing: 10.0, // Spacing between rows
      padding: EdgeInsets.all(10.0), // Padding around the grid
      children: [
        classCard(
          title: 'Program 1',
          date: 'May 18, 2023',
          startTime: '9:00 AM',
          closingTime: '10:30 AM',
        ),
        classCard(
          title: 'Program 2',
          date: 'May 18, 2023',
          startTime: '11:00 AM',
          closingTime: '12:30 PM',
        ),
        classCard(
          title: 'Program 3',
          date: 'May 19, 2023',
          startTime: '2:00 PM',
          closingTime: '3:30 PM',
        ),
        // Add more classCard widgets as needed
      ],
    );
  }
}
