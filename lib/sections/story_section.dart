// ignore_for_file: use_key_in_widget_constructors

import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            avatar: profile2,
            labelText: 'Add To Story',
            story: clock,
            createStoryStatus: true,
          ),
          StoryCard(
            avatar: profile1,
            labelText: 'John Wick',
            story: clock,
            displayBorder: true,
          ),
          StoryCard(
            avatar: profile3,
            labelText: 'Vecna',
            story: clock,
            displayBorder: true,
          ),
          StoryCard(
            avatar: profile1,
            labelText: 'John Wick',
            story: clock,
            displayBorder: true,
          ),
          StoryCard(
            avatar: profile1,
            labelText: 'John Wick',
            story: clock,
            displayBorder: true,
          ),
          StoryCard(
            avatar: profile1,
            labelText: 'John Wick',
            story: clock,
            displayBorder: true,
          ),
          StoryCard(
            avatar: profile1,
            labelText: 'John Wick',
            story: clock,
            displayBorder: true,
          ),
          StoryCard(
            avatar: profile1,
            labelText: 'John Wick',
            story: clock,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
