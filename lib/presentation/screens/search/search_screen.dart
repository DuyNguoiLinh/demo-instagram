import 'package:flutter/material.dart';
import 'package:instagram/presentation/screens/search/models/category.dart';
import 'package:instagram/presentation/screens/search/models/gallery.dart';
import 'package:instagram/presentation/screens/search/widgets/category_list_view.dart';
import 'package:instagram/presentation/screens/search/widgets/gallery_list_view.dart';
import 'package:instagram/presentation/screens/search/widgets/search_app_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  static const List<Category> categories = <Category>[
    Category(
      title: 'IGTV',
      image: 'assets/icons/tv.svg',
    ),
    Category(
      title: 'Shop',
      image: 'assets/icons/shop.svg',
    ),
    Category(
      title: 'Style',
    ),
    Category(
      title: 'Sports',
    ),
    Category(
      title: 'Auto',
    ),
    Category(
      title: 'Music',
    ),
  ];

  int selectedCategoryIndex = 0;

  static const List<Gallery> galleries = <Gallery>[
    Gallery(
      image: 'assets/images/gallery1.png',
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      categoryIndex: 0,
    ),
    Gallery(
      image: 'assets/images/gallery3.png',
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      categoryIndex: 1,
    ),
    Gallery(
      image: 'assets/images/gallery2.png',
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      categoryIndex: 2,
    ),
    Gallery(
      image: 'assets/images/gallery4.png',
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      categoryIndex: 3,
    ),
    Gallery(
      image: 'assets/images/gallery5.png',
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      categoryIndex: 4,
    ),
    Gallery(
      image: 'assets/images/gallery6.png',
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      categoryIndex: 5,
    ),
    Gallery(
      image: 'assets/images/gallery7.png',
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      categoryIndex: 0,
    ),
    Gallery(
      image: 'assets/images/gallery8.png',
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      categoryIndex: 1,
    ),
    Gallery(
      image: 'assets/images/gallery9.png',
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      categoryIndex: 2,
    ),
    Gallery(
      image: 'assets/images/gallery10.png',
      crossAxisCellCount: 2,
      mainAxisCellCount: 1,
      categoryIndex: 3,
    ),
    Gallery(
      image: 'assets/images/gallery11.png',
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      categoryIndex: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppBar(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 46,
            child: CategoryListView(
              categories: categories,
              selectedCategoryIndex: selectedCategoryIndex,
              onChanged: (int selectedIndex) {
                setState(() {
                  selectedCategoryIndex = selectedIndex;
                });
              },
            ),
          ),
          GalleryListView(
            galleries: galleries
                .where(
                  (Gallery gallery) =>
                      gallery.categoryIndex == selectedCategoryIndex,
                )
                .toList(), // List<Gallery> list1 ==> List<Gallery> list2
            // list2 sẽ có số phần tử <= list1
          ),
        ],
      ),
    );
  }
}
