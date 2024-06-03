import 'package:flutter/material.dart';
import 'package:instagram/presentation/screens/home/models/post.dart';
import 'package:instagram/presentation/screens/home/models/story.dart';
import 'package:instagram/presentation/screens/home/widgets/home_app_bar.dart';
import 'package:instagram/presentation/screens/home/widgets/post_list_view.dart';
import 'package:instagram/presentation/screens/home/widgets/story_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<Story> stories = <Story>[
    Story(
      name: 'Your Story',
      avatar: 'assets/images/avatar.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
    Story(
      name: 'quang_thang',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    Story(
      name: 'khanh_duy',
      avatar: 'assets/images/avatar2.png',
      isLive: false,
    ),
    Story(
      name: 'khoe_hp',
      avatar: 'assets/images/avatar3.png',
      isLive: false,
    ),
    Story(
      name: 'duy_anh',
      avatar: 'assets/images/avatar4.png',
      isLive: false,
    ),
  ];

  static const List<Post> posts = <Post>[
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: <String>[
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: <String>[
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: <String>[
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: <String>[
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: <String>[
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: <String>[
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: <String>[
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: <String>[
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: <String>[
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar1.png',
      address: 'Tokyo, Japan',
      images: <String>[
        'assets/images/post.png',
        'assets/images/post1.png',
        'assets/images/post2.png',
        'assets/images/post3.png',
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
      isOfficial: true,
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar2.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar3.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
    Post(
      name: 'joshua_l',
      avatar: 'assets/images/avatar4.png',
      images: <String>['assets/images/post.png'],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/avatar4.png',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 98,
            child: StoryListView(
              stories: stories,
            ),
          ),
          Expanded(
            child: PostListView(posts: posts),
          ),
        ],
      ),
    );
  }
}
