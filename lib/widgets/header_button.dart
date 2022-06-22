import 'package:flutter/material.dart';

Widget headerButton({
  required IconData icon,
  required Color iconColor,
  required void Function() action,
  required String buttonText,
}) {
  return FlatButton.icon(
    onPressed: action,
    icon: Icon(
      icon,
      color: iconColor,
    ),
    label: Text(buttonText),
  );
}
