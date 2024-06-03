import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:instagram/presentation/screens/home/models/post.dart';

class PostHeaderItem extends StatelessWidget {
  const PostHeaderItem({
    required this.post,
    super.key,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: Row(
        children: <Widget>[
          const SizedBox(
            width: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              post.avatar,
              width: 32,
              height: 32,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    post.name,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF262626),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  if (post.isOfficial)
                    SvgPicture.asset(
                      'assets/icons/official.svg',
                      width: 10,
                      height: 10,
                    ),
                ],
              ),
              const SizedBox(height: 1),
              Text(
                post.address,
                style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xFF262626),
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Spacer(),
          SvgPicture.asset(
            'assets/icons/more.svg',
            width: 14,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
