import 'package:flutter/material.dart';

import 'package:instagram/presentation/screens/home/models/post.dart';
import 'package:instagram/presentation/screens/home/widgets/post_center_item.dart';
import 'package:instagram/presentation/screens/home/widgets/post_footer_item.dart';
import 'package:instagram/presentation/screens/home/widgets/post_header_item.dart';

class PostItem extends StatefulWidget {
  const PostItem({
    required this.post,
    super.key,
  });

  final Post post;

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  int _selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PostHeaderItem(post: widget.post),
        PostCenterItem(
          post: widget.post,
          onPageChanged: (int index) {
            setState(() {
              _selectedImageIndex = index;
            });
          },
        ),
        PostFooterItem(
          post: widget.post,
          selectedImageIndex: _selectedImageIndex,
        ),
      ],
    );
  }
}
