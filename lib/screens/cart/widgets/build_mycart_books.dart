import 'package:flutter/material.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../home/widgets/build_onreading_book_item.dart';

class BuildMyCartBooks extends StatelessWidget {
  final List<Book> myBooks;

  const BuildMyCartBooks({super.key, required this.myBooks});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return BookItem(
          book: myBooks[index],
          isBestSellerSection: true,
          isLendingSection: true,
        );
      },
      itemCount: myBooks.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 5,
        );
      },
    );
  }
}
