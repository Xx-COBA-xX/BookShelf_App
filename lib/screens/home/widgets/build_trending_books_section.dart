import 'package:flutter/material.dart';

import '../../../data/model/book_model/book_model.dart';
import 'build_onreading_book_item.dart';

class BuildTrendingBooksSection extends StatelessWidget {
  const BuildTrendingBooksSection({super.key, required this.trendingBooks});

  final List<Book> trendingBooks;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return BookItem(
            book: trendingBooks[index],
            isBestSellerSection: true,
            isLendingSection: true,
          );
        },
        itemCount: trendingBooks.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 6,
          );
        },
      ),
    );
  }
}
