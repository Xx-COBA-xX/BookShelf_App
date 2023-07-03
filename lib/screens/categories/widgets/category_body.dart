import 'package:flutter/material.dart';
import '../../../data/model/category_model/category_model.dart';
import 'build_category_contaner.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({
    Key? key,
    required this.myCategories,
  }) : super(key: key);
  final List<CategoryModel> myCategories;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.5,
          crossAxisSpacing: 26,
          mainAxisSpacing: 16,
        ),
        itemCount: myCategories.length,
        itemBuilder: (context, index) {
          return BuildCategoryContaner(
            myCategories: myCategories,
            index: index,
          );
        },
      ),
    );
  }
}

