import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/colos.dart';

class BuildSearchBar extends StatelessWidget {
  const BuildSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: kFiledColor,
        borderRadius: BorderRadius.circular(8),
      ),
      height: MediaQuery.of(context).size.height * 0.055,
      child: Center(
        child: TextField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              CupertinoIcons.search,
              size: 22,
              color: kAuthorTextColor,
            ),
            hintText: "Search..",
            hintStyle: TextStyle(
              color: kAuthorTextColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: MediaQuery.of(context).size.height / 55,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
