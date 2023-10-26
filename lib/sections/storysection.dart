import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storycard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: deepika,
            story: deepika1,
            createStoryStatus: true,
          ),
          StoryCard(
              labelText: "Alia Bhatt",
              story: alia1,
              avatar: alia,
          ),
          StoryCard(
              labelText: "Ranbeer Kapoor",
              story: ranbeer1,
              avatar: ranbeer,
          ),
          StoryCard(
              labelText: "Vicky Kaushal",
              avatar: vicky,
              story: vicky1,
          ),
          StoryCard(
              labelText: "Katrina Kaif",
              story: katrina1,
              avatar: katrina,
          ),
        ],
      ),
    );
  }
}
