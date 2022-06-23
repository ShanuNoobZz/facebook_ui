// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/suggestion_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People You May Know"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Iconsax.more),
              color: Colors.grey[600],
            ),
          ),
          SizedBox(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Suggectioncard(
                  avatar: clock,
                  name: "Shanu",
                  mutualFriends: "16 Mutual Friends",
                  addFriend: () {},
                  removeFriend: () {},
                ),
                Suggectioncard(
                  avatar: clock,
                  name: "Person1",
                  mutualFriends: "13 Mutual Friends",
                  addFriend: () {},
                  removeFriend: () {},
                ),
                Suggectioncard(
                  avatar: clock,
                  name: "Person2",
                  mutualFriends: "1 Mutual Friends",
                  addFriend: () {},
                  removeFriend: () {},
                ),
                Suggectioncard(
                  avatar: clock,
                  name: "Person3",
                  mutualFriends: "16 Mutual Friends",
                  addFriend: () {},
                  removeFriend: () {},
                ),
                Suggectioncard(
                  avatar: clock,
                  name: "Person4",
                  mutualFriends: "16 Mutual Friends",
                  addFriend: () {},
                  removeFriend: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
