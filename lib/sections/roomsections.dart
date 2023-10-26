import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';


class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: deepika, displayStatus: true),
          Avatar(displayImage: alia, displayStatus: true),
          Avatar(displayImage: ranbeer, displayStatus: true),
          Avatar(displayImage: vicky, displayStatus: true),
          Avatar(displayImage: katrina, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton(){
    return Container(
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: OutlinedButton.icon(
    style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    side: BorderSide(
    width: 1.5,
    color: Colors.blue,
    )
    ),
    ),
    onPressed: (){
      print("Create a chat room!");
    },
    icon: Icon(
    Icons.chat,
    color: Colors.blue,
    ),
    label: Text(
    "Create \nRoom",
    style: TextStyle(
    color: Colors.blue,
    ),
    )
      )
    );
  }
}