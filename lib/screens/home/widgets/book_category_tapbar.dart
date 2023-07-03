// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_library_app/constants/colos.dart';

import 'build_tapbar_book_item.dart';

class BuildTabBarBook extends StatefulWidget {
  BuildTabBarBook({
    super.key,
    required this.tabBar,
    required this.currentIndex,
  });

  final List<String> tabBar;
  int currentIndex;

  @override
  State<BuildTabBarBook> createState() => _BuildTabBarBookState();
}

class _BuildTabBarBookState extends State<BuildTabBarBook> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.36,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.054,
            child: ListView.builder(
              itemCount: widget.tabBar.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return _buildTapBarItem(
                  onTap: () {
                    setState(() {
                      widget.currentIndex = index;
                    });
                  },
                  title: widget.tabBar[index],
                  index: index,
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.019,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BuildTapBarBookItem(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector _buildTapBarItem({
    required String title,
    required void Function()? onTap,
    required int index,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
        margin: const EdgeInsets.only(left: 16),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: widget.currentIndex == index
                ? kPrimaryColor
                : Colors.transparent),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.height / 45,
                  color:
                      widget.currentIndex == index ? white : kAuthorTextColor,
                ),
          ),
        ),
      ),
    );
  }
}

