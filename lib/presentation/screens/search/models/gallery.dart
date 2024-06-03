class Gallery {
  const Gallery({
    required this.image,
    required this.crossAxisCellCount,
    required this.mainAxisCellCount,
    required this.categoryIndex,
  });

  final String image;

  final int crossAxisCellCount;

  final int mainAxisCellCount;

  final int categoryIndex;
}
