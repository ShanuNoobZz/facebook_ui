// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displaystatus;
  final bool displayBorder;
  final double width;
  final double height;

  Avatar({
    this.displayBorder = false,
    required this.displayImage,
    required this.displaystatus,
    this.height = 50,
    this.width = 50,
  });

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;

    if (displaystatus == true) {
      statusIndicator = Positioned(
        right: 1,
        bottom: 0,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            color: Colors.greenAccent,
            shape: BoxShape.circle,
          ),
        ),
      );
    } else {
      statusIndicator = SizedBox();
    }

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )
                : Border(),
          ),
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: width,
              height: height,
            ),
          ),
        ),
        statusIndicator,
      ],
    );
  }
}
