import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/presentation/screens/search/widgets/search_text_field.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      centerTitle: true,
      title: const SearchTextField(),
      actions: <Widget>[
        SvgPicture.asset(
          'assets/icons/live.svg',
          width: 20,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          width: 18,
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.5),
        child: Container(
          color: const Color(0x1A000000),
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
