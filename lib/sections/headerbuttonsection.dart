import 'package:flutter/material.dart';

 class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
})
  {
    return TextButton.icon(
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      onPressed: () {
        print("Live button clicked!");
      },
      label: Text(buttonText),
    );
  }
  const HeaderButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            buttonText: "Live",
            buttonIcon: Icons.video_call,
            buttonAction: (){
              print("Go Live!");
            },
            buttonColor: Colors.red,
        ),
          verticalDivider,
          headerButton(
              buttonText: "Photo",
              buttonIcon: Icons.photo_library,
              buttonAction: (){
                print("Take photo!");
              },
              buttonColor: Colors.green,
          ),
          verticalDivider,
          headerButton(
            buttonText: "Room",
            buttonIcon: Icons.video_call,
            buttonAction: (){
              print("Create chat room!");
            },
            buttonColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}




