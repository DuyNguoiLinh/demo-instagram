import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:instagram/presentation/screens/search/models/gallery.dart';
import 'package:instagram/presentation/screens/search/widgets/gallery_item.dart';

class GalleryListView extends StatelessWidget {
  const GalleryListView({
    required this.galleries,
    super.key,
  });

  final List<Gallery> galleries;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          children: galleries
              .map((Gallery gallery) => GalleryItem(gallery: gallery))
              .toList(), // List<Gallery> ==> List<GalleryItem>
        ),
      ),
    );
  }
}
