// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Suggectioncard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  Suggectioncard({
    required this.avatar,
    required this.name,
    required this.mutualFriends,
    required this.addFriend,
    required this.removeFriend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggectionImage(),
          suggectionDetails(),
        ],
      ),
    );
  }

  Widget suggectionDetails() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(
              color: Color(0xFFE0E0E0),
              width: 1,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name),
              subtitle: Text(mutualFriends),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonAction: addFriend,
                    buttonIcon: Iconsax.user_add,
                    buttonColor: Color(0xFF1E88E5),
                    buttonTextColor: Colors.white,
                    buttonIconColor: Colors.white,
                    buttonText: "Add Friend",
                  ),
                  blankButton(
                    buttonaction: removeFriend,
                    buttonTextColor: Colors.black,
                    buttonColor: Color(0xFFD6D6D6),
                    buttonText: "Remove",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      label: Text(buttonText),
      color: buttonColor,
      textColor: buttonTextColor,
    );
  }

  Widget blankButton({
    required void Function() buttonaction,
    required Color buttonTextColor,
    required Color buttonColor,
    required String buttonText,
  }) {
    return FlatButton(
      onPressed: buttonaction,
      color: buttonColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget suggectionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Image.asset(
          avatar,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
