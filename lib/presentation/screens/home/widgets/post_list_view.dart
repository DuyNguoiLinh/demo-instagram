import 'package:flutter/material.dart';

import 'package:instagram/presentation/screens/home/models/post.dart';
import 'package:instagram/presentation/screens/home/widgets/post_item.dart';

class PostListView extends StatelessWidget {
  const PostListView({
    required this.posts,
    super.key,
  });

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return PostItem(post: posts[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 16,
          color: Colors.black.withOpacity(0.1),
        );
      },
      itemCount: posts.length,
    );
  }
}
