// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_library_app/constants/size_config.dart';

import 'package:my_library_app/data/model/book_model/best_seller_book.dart';
import 'package:my_library_app/data/model/book_model/book_on_reading.dart';
import 'package:my_library_app/data/model/book_model/trending_book.dart';
import 'package:my_library_app/data/model/tab_bar/tab_bar_model.dart';
import 'package:my_library_app/screens/home/widgets/book_category_tapbar.dart';
import 'package:my_library_app/screens/home/widgets/build_search_bar.dart';
import 'package:my_library_app/screens/home/widgets/build_title_new_section.dart';
import 'package:my_library_app/screens/home/widgets/custom_app_bar.dart';
import 'widgets/build_best_seller_books_section.dart';
import 'widgets/build_onreading_books.dart';
import 'widgets/build_trending_books_section.dart';

import '../../data/model/book_model/book_model.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  MySizedBox sizedBox = MySizedBox();
  List<Book> myOnReadingBooks = OnReadingBooks.onReadingBooks;
  List<String> tabBar = MyTabBar.tabBar;
  int currentIndex = 0;
  List<Book> bestSellerBooks = BestSellerBook().bestSellerBook;
  List<Book> trendingBooks = TrendingBooks().trendingBooks;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBar(),
          sizedBox.buildMainSizedBox(context),
          const BuildSearchBar(),
          sizedBox.buildMainSizedBox(context),
          const BuildTitleNewSection(title: "On reading"),
          sizedBox.buildSecondSizedBox(context),
          BuildOnReadingBooks(myBooks: myOnReadingBooks),
          sizedBox.buildMainSizedBox(context),
          BuildTabBarBook(tabBar: tabBar, currentIndex: currentIndex),
          sizedBox.buildMainSizedBox(context),
          const BuildTitleNewSection(title: "Best Seller"),
          sizedBox.buildSecondSizedBox(context),
          BuildBestSellerBooksSection(bestSellerBooks: bestSellerBooks),
          sizedBox.buildMainSizedBox(context),
          const BuildTitleNewSection(title: "Trending Books"),
          sizedBox.buildSecondSizedBox(context),
          BuildTrendingBooksSection(trendingBooks: trendingBooks)
        ],
      ),
    );
  }
}
