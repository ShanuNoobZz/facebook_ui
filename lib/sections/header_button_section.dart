// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });

  @override
  Widget build(BuildContext context) {
    Widget verticleDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          VerticalDivider(),
          buttonTwo,
          VerticalDivider(),
          buttonThree,
        ],
      ),
    );
  }
}
