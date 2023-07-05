import 'package:flutter/material.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/model/book_model/trending_book.dart';
import 'build_cart_payment_container.dart';
import 'build_mycart_books.dart';

class BuildCartBodyWidget extends StatelessWidget {
  BuildCartBodyWidget({super.key});

  final List<Book> cartBooks = TrendingBooks().trendingBooks;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BuildMyCartBooks(myBooks: cartBooks),
        const Positioned(
          bottom: 18,
          child: BuildCartPaymentContainer(),
        ),
      ],
    );
  }
}
