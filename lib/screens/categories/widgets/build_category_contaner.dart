// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colos.dart';
import '../../../data/model/category_model/category_model.dart';

class BuildCategoryContaner extends StatelessWidget {
   const BuildCategoryContaner({
    super.key,
    required this.myCategories,
    required this.index,
  });

  final List<CategoryModel> myCategories;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: categoryColors[myCategories[index].noOfColor],
              ),
              child: Center(
                child: SvgPicture.asset(
                  myCategories[index].icon,
                  
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            // padding: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  myCategories[index].type,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: MediaQuery.of(context).size.height / 45),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${myCategories[index].noOfBooks} Books",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: MediaQuery.of(context).size.height / 55,
                      color: kAuthorTextColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
