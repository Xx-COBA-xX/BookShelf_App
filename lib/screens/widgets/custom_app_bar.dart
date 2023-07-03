import 'package:flutter/material.dart';

import '../../constants/colos.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: white,
      shadowColor: kPrimaryColor,
      surfaceTintColor: kPrimaryColor,
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.w600, color: kTitleTextColor),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
