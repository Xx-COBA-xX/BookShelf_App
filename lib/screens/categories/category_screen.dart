// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:my_library_app/data/model/category_model/category_info.dart';
import 'package:my_library_app/screens/categories/widgets/category_body.dart';

import '../../data/model/category_model/category_model.dart';
import '../widgets/custom_app_bar.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  final List<CategoryModel> myCategories = CategoryInformation().categoryInfo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyCustomAppBar(
          title: "Category",
        ),
        body: CategoryBody(
          myCategories: myCategories,
        ));
  }
}
