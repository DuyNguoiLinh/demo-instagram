import 'package:flutter/material.dart';

import 'package:instagram/presentation/screens/home/models/post.dart';

class PostCenterItem extends StatefulWidget {
  const PostCenterItem({
    required this.post,
    required this.onPageChanged,
    super.key,
  });

  final Post post;

  final ValueChanged<int> onPageChanged;

  @override
  State<PostCenterItem> createState() => _PostCenterItemState();
}

class _PostCenterItemState extends State<PostCenterItem>
    with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(
      length: widget.post.images.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth,
      height: screenWidth,
      child: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                widget.post.images[index],
                fit: BoxFit.fitWidth,
              );
            },
            itemCount: widget.post.images.length,
            controller: _pageViewController,
            onPageChanged: _handlePageViewChanged,
          ),
          Positioned(
            top: 14,
            right: 14,
            child: Container(
              width: 32,
              height: 26,
              decoration: const BoxDecoration(
                color: Color(0xB3121212),
                borderRadius: BorderRadius.all(
                  Radius.circular(13),
                ),
              ),
              child: Center(
                child: Text(
                  '${_tabController.index + 1}/${widget.post.images.length}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    widget.onPageChanged.call(currentPageIndex);
  }
}
