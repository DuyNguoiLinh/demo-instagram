import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum MainTab { home, search, newPost, favorite, profile }

extension MainTabExtension on MainTab {
  Widget get selectedIcon {
    switch (this) {
      case MainTab.home:
        return SvgPicture.asset('assets/icons/selected_home_tab.svg');
      case MainTab.search:
        return SvgPicture.asset('assets/icons/selected_search_tab.svg');
      case MainTab.newPost:
        return SvgPicture.asset('assets/icons/new_tab.svg');
      case MainTab.favorite:
        return SvgPicture.asset('assets/icons/selected_favorite_tab.svg');
      case MainTab.profile:
        return Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(13.5),
          ),
          padding: const EdgeInsets.all(2),
          width: 28,
          height: 28,
          child: Center(
            child: Image.asset(
              'assets/images/avatar.png',
              height: 24,
              fit: BoxFit.fitHeight,
            ),
          ),
        );
    }
  }

  Widget get unselectedIcon {
    switch (this) {
      case MainTab.home:
        return SvgPicture.asset('assets/icons/home_tab.svg');
      case MainTab.search:
        return SvgPicture.asset('assets/icons/search_tab.svg');
      case MainTab.newPost:
        return SvgPicture.asset('assets/icons/new_tab.svg');
      case MainTab.favorite:
        return SvgPicture.asset('assets/icons/favorite_tab.svg');
      case MainTab.profile:
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(13.5),
          ),
          padding: const EdgeInsets.all(2),
          width: 28,
          height: 28,
          child: Center(
            child: Image.asset(
              'assets/images/avatar.png',
              height: 24,
              fit: BoxFit.fitHeight,
            ),
          ),
        );
    }
  }
}
