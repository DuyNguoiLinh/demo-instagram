import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:instagram/presentation/screens/search/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.category,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final Category category;

  final bool isSelected;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          color: isSelected ? Colors.black : Colors.white,
          border: Border.all(
            color: const Color(0xFF3C3C43).withOpacity(0.18),
          ),
        ),
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 12,
            ),
            if (category.image != null) ...<Widget>[
              SvgPicture.asset(
                category.image!,
                colorFilter: ColorFilter.mode(
                  isSelected ? Colors.white : Colors.black,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
            ],
            Text(
              category.title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
      ),
    );
  }
}
