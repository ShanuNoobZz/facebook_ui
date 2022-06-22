// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: profile2, displaystatus: true),
          Avatar(displayImage: profile3, displaystatus: true),
          Avatar(displayImage: profile4, displaystatus: true),
          Avatar(displayImage: profile5, displaystatus: true),
          Avatar(displayImage: profile6, displaystatus: true),
          Avatar(displayImage: profile7, displaystatus: true),
          Avatar(displayImage: profile2, displaystatus: true),
          Avatar(displayImage: profile3, displaystatus: true),
          Avatar(displayImage: profile4, displaystatus: true),
          Avatar(displayImage: profile5, displaystatus: true),
          Avatar(displayImage: profile6, displaystatus: true),
          Avatar(displayImage: profile7, displaystatus: true),
          Avatar(displayImage: profile2, displaystatus: true),
          Avatar(displayImage: profile3, displaystatus: true),
          Avatar(displayImage: profile4, displaystatus: true),
          Avatar(displayImage: profile5, displaystatus: true),
          Avatar(displayImage: profile2, displaystatus: true),
          Avatar(displayImage: profile3, displaystatus: true),
          Avatar(displayImage: profile4, displaystatus: true),
          Avatar(displayImage: profile5, displaystatus: true),
          Avatar(displayImage: profile6, displaystatus: true),
          Avatar(displayImage: profile7, displaystatus: true),
          Avatar(displayImage: profile2, displaystatus: true),
          Avatar(displayImage: profile3, displaystatus: true),
          Avatar(displayImage: profile4, displaystatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(
        right: 5,
        left: 5,
      ),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(
            color: Color(0xFF90CAF9),
          ),
        ),
        onPressed: () {},
        icon: Icon(
          Iconsax.additem4,
          color: Colors.purple,
        ),
        label: Text(
          "Create\nRoom",
          style: TextStyle(
            fontSize: 13,
            fontFamily: 'nunito',
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
