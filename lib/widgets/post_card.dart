// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, prefer_if_null_operators

import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/header_button_section.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blue_tick.dart';
import 'package:facebook_ui/widgets/header_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        postcardHeader(),
        titleSection(),
        imageSection(),
        footerSection(),
        Divider(color: Colors.grey[300], thickness: 1),
        HeaderButtonSection(
          buttonOne: headerButton(
              icon: Iconsax.like_1,
              iconColor: Color(0xFF757575),
              action: () {},
              buttonText: "Like"),
          buttonTwo: headerButton(
              icon: Iconsax.message_text,
              iconColor: Color(0xFF757575),
              action: () {},
              buttonText: "Comment"),
          buttonThree: headerButton(
              icon: Iconsax.share,
              iconColor: Color(0xFF757575),
              action: () {},
              buttonText: "Share"),
        ),
      ],
    );
  }

  Widget displayText({
    required String lable,
  }) {
    return Text(
      lable,
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5, left: 5, right: 5),
            child: Text(
              postTitle == null ? "" : postTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postcardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displaystatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt),
          SizedBox(width: 10),
          Icon(
            Icons.public,
            color: Colors.grey[600],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Iconsax.more,
          color: Colors.grey[600],
        ),
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Iconsax.like_15,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                SizedBox(width: 5),
                displayText(lable: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(lable: commentCount),
                SizedBox(width: 5),
                displayText(lable: "Comments"),
                SizedBox(width: 10),
                displayText(lable: shareCount),
                SizedBox(width: 5),
                displayText(lable: "Shares"),
                SizedBox(width: 10),
                Avatar(
                  displayImage: profile4,
                  displaystatus: false,
                  height: 25,
                  width: 25,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.arrow_down_1,
                    color: Colors.grey[600],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
