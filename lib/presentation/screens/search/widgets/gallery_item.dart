import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/presentation/screens/search/models/gallery.dart';

class GalleryItem extends StatelessWidget {
  const GalleryItem({
    required this.gallery,
    super.key,
  });

  final Gallery gallery;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: gallery.crossAxisCellCount,
      mainAxisCellCount: gallery.mainAxisCellCount,
      child: Image.asset(
        gallery.image,
        fit: BoxFit.cover,
      ),
    );
  }
}
