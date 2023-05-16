import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/Notifications.dart';

class NotificationFill extends StatelessWidget {
  const NotificationFill({
    super.key,
    // ignore: non_constant_identifier_names
    required this.Notification,
  });
  // ignore: non_constant_identifier_names
  final Notifications Notification;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text.rich(TextSpan(
          text: "${Notification.title}\n",
          style: const TextStyle(
              color: kPrimaryColor, fontWeight: FontWeight.w600),
          children: [
            TextSpan(
                text: "${Notification.message}/n/n",
                style: const TextStyle(
                    color: kTextColor, fontWeight: FontWeight.normal))
          ])),
      onTap: () {
        //Navigator.pushNamed(context, route);
      },
    );
  }
}
