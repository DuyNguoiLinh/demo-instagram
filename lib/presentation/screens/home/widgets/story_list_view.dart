import 'package:flutter/material.dart';

import 'package:instagram/presentation/screens/home/models/story.dart';
import 'package:instagram/presentation/screens/home/widgets/story_item.dart';

class StoryListView extends StatelessWidget {
  const StoryListView({
    required this.stories,
    super.key,
  });

  final List<Story> stories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return StoryItem(story: stories[index]);
      },
      itemCount: stories.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 20,
        );
      },
    );
  }
}
