import 'package:flutter/material.dart';

import '../../../data/model/book_model/book_model.dart';
import 'build_onreading_book_item.dart';

class BuildOnReadingBooks extends StatelessWidget {
  const BuildOnReadingBooks({super.key, required this.myBooks});

  final List<Book> myBooks;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BookItem(
            book: myBooks[index],
            isBestSellerSection: false,
          );
        },
        itemCount: myBooks.length,
      ),
    );
  }
}
