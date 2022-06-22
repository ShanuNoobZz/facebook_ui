// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/header_button_section.dart';
import 'package:facebook_ui/sections/room_section.dart';
import 'package:facebook_ui/sections/status_section.dart';
import 'package:facebook_ui/sections/story_section.dart';
import 'package:facebook_ui/sections/suggestion_section.dart';
import 'package:facebook_ui/widgets/circular_button.dart';
import 'package:facebook_ui/widgets/header_button.dart';
import 'package:facebook_ui/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatelessWidget {
  Widget thindivider = Divider(
    height: 1,
    color: Colors.grey[300],
  );

  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            CircularButton(
              buttonIcon: Iconsax.search_normal,
              buttonAction: () {},
              buttoncolor: Colors.black,
            ),
            CircularButton(
              buttonIcon: Iconsax.message,
              buttonAction: () {},
              buttoncolor: Colors.black,
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              fontFamily: 'Nunito',
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            StatusSection(),
            thindivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                icon: Iconsax.video,
                iconColor: Colors.red,
                action: () {},
                buttonText: "Live",
              ),
              buttonTwo: headerButton(
                icon: Iconsax.camera,
                iconColor: Colors.lightGreen,
                action: () {},
                buttonText: "Photo",
              ),
              buttonThree: headerButton(
                icon: Iconsax.picture_frame,
                iconColor: Colors.blue,
                action: () {},
                buttonText: "Room",
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              name: "shanu",
              avatar: profile2,
              publishedAt: "5h ago",
              postImage: post1,
              postTitle: "",
              showBlueTick: true,
              shareCount: "541",
              likeCount: "10k",
              commentCount: "1.2k",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              name: "Tony Stark",
              avatar: profile5,
              publishedAt: "1 day ago",
              postImage: post3,
              postTitle: "",
              showBlueTick: true,
              shareCount: "652",
              likeCount: "11k",
              commentCount: "2.1k",
            ),
            thickDivider,
            PostCard(
              name: "John wick",
              avatar: profile4,
              publishedAt: "8h ago",
              postImage: post2,
              postTitle: "",
              showBlueTick: true,
              shareCount: "685",
              likeCount: "12k",
              commentCount: "1.1k",
            ),
            thickDivider,
            PostCard(
              name: "Vecna",
              avatar: profile4,
              publishedAt: "10s ago",
              postImage: clock,
              postTitle: "Your Time Has Come to an End",
              showBlueTick: true,
              shareCount: "500",
              likeCount: "10k",
              commentCount: "1.2k",
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
