// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:facebook_ui/widgets/suggestion_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
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
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Suggectioncard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
