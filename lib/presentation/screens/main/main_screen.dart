import 'package:flutter/material.dart';
import 'package:instagram/presentation/screens/favorite/favorite_screen.dart';
import 'package:instagram/presentation/screens/home/home_screen.dart';
import 'package:instagram/presentation/screens/main/models/main_tab.dart';
import 'package:instagram/presentation/screens/main/widgets/main_bottom_navigation_bar.dart';
import 'package:instagram/presentation/screens/new_post/new_post.dart';
import 'package:instagram/presentation/screens/profile/profile_screen.dart';
import 'package:instagram/presentation/screens/search/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MainTab selectedMainTab = MainTab.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: MainBottomNavigationBar(
        selectedMainTab: selectedMainTab,
        onTap: (MainTab value) {
          setState(() {
            selectedMainTab = value;
          });
        },
      ),
    );
  }

  Widget _buildBody() {
    switch (selectedMainTab) {
      case MainTab.home:
        return const HomeScreen();
      case MainTab.search:
        return const SearchScreen();
      case MainTab.newPost:
        return const NewPostScreen();
      case MainTab.favorite:
        return const FavoriteScreen();
      case MainTab.profile:
        return const ProfileScreen();
    }
  }
}
