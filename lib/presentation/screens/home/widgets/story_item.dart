import 'package:flutter/material.dart';

import 'package:instagram/presentation/screens/home/models/story.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    required this.story,
    super.key,
  });

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildAvatar(),
        Text(story.name),
      ],
    );
  }

  Widget _buildAvatar() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.red,
              gradient: LinearGradient(
                colors: story.isLive
                    ? <Color>[
                        const Color(0xFFE20337),
                        const Color(0xFFC60188),
                        const Color(0xFF7700C3),
                      ]
                    : <Color>[
                        const Color(0xFFFBC147),
                        const Color(0xFFD91A46),
                        const Color(0xFFA60F93),
                      ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(32),
              ),
            ),
            child: Center(
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Image.asset(
                  story.avatar,
                  width: 56,
                  height: 56,
                ),
              ),
            ),
          ),
        ),
        if (story.isLive)
          Positioned(
            bottom: 0,
            left: 18,
            child: _buildLive(),
          ),
      ],
    );
  }
}

Widget _buildLive() {
  return Container(
    width: 28,
    height: 18,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: <Color>[
          Color(0xFFC90083),
          Color(0xFFD22463),
          Color(0xFFE10038),
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      border: Border.all(
        color: Colors.white,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(2),
    ),
    child: const Center(
      child: Text(
        'LIVE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 8,
        ),
      ),
    ),
  );
}
