import 'package:flutter/material.dart';

import 'package:instagram/presentation/screens/search/models/category.dart';
import 'package:instagram/presentation/screens/search/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    required this.categories,
    required this.selectedCategoryIndex,
    required this.onChanged,
    super.key,
  });

  final List<Category> categories;

  final int selectedCategoryIndex;

  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return CategoryItem(
          category: categories[index],
          isSelected: selectedCategoryIndex == index,
          onTap: () {
            onChanged.call(index);
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 6,
        );
      },
      itemCount: categories.length,
    );
  }
}
