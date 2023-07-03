import 'package:flutter/material.dart';

import '../../../data/model/book_model/book_model.dart';
import 'build_onreading_book_item.dart';

class BuildBestSellerBooksSection extends StatelessWidget {
  const BuildBestSellerBooksSection({super.key, required this.bestSellerBooks});
  final List<Book> bestSellerBooks;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BookItem(
            book: bestSellerBooks[index],
            isBestSellerSection: true,
          );
        },
        itemCount: bestSellerBooks.length,
      ),
    );
  }
}
