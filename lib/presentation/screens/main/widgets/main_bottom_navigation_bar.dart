import 'package:flutter/material.dart';

import 'package:instagram/presentation/screens/main/models/main_tab.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({
    required this.onTap,
    required this.selectedMainTab,
    super.key,
  });

  final MainTab selectedMainTab;

  final ValueChanged<MainTab> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        _onTap(index: index);
      },
      items: MainTab.values
          .map(
            (MainTab mainTab) =>
                _buildBottomNavigationBarItem(mainTab: mainTab),
          )
          .toList(), // List<MainTab> --> List<BottomNavigationBarItem>
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required MainTab mainTab,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: selectedMainTab == mainTab
            ? mainTab.selectedIcon
            : mainTab.unselectedIcon,
      ),
      label: '',
    );
  }

  void _onTap({
    required int index,
  }) {
    if (index == MainTab.home.index) {
      onTap.call(MainTab.home);
    } else if (index == MainTab.search.index) {
      onTap.call(MainTab.search);
    } else if (index == MainTab.newPost.index) {
      onTap.call(MainTab.newPost);
    } else if (index == MainTab.favorite.index) {
      onTap.call(MainTab.favorite);
    } else if (index == MainTab.profile.index) {
      onTap.call(MainTab.profile);
    }
  }
}
