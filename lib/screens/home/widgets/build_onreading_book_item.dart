// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/colos.dart';
import '../../../data/model/book_model/book_model.dart';

class BookItem extends StatelessWidget {
  const BookItem(
      {super.key,
      required this.book,
      this.isBestSellerSection = false,
      this.isLendingSection = false});
  final Book book;
  final bool isBestSellerSection;
  final bool isLendingSection;
  @override
  Widget build(BuildContext context) {
    double x = isBestSellerSection ? 0.60 : 0.70;
    return BuildBody(context, x);
  }

  Widget BuildBody(BuildContext context, double x) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(left: 16),
      width: MediaQuery.of(context).size.width * x,
      height: MediaQuery.of(context).size.height * 0.12,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: AssetImage(book.image), fit: BoxFit.cover),
              ),
              // width: MediaQuery.of(context).size.width * 0.20,
            ),
          ),
          Expanded(
            flex: isLendingSection ? 8 : 4,
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 80,
                right: isLendingSection ? 20 : 10,
                left: 10,
                bottom: isBestSellerSection
                    ? 10
                    : MediaQuery.of(context).size.height / 45,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.authorName,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: MediaQuery.of(context).size.height / 60),
                  ),
                  Text(
                    book.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: MediaQuery.of(context).size.height / 50),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  isBestSellerSection
                      ? _buildPrice(book.price, context)
                      : SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Page 124 from 332",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              80,
                                          color:
                                              kAuthorTextColor.withOpacity(0.7),
                                        ),
                                  ),
                                  Text(
                                    "${book.complate}%",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              80,
                                          color:
                                              kAuthorTextColor.withOpacity(0.7),
                                        ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    height: MediaQuery.of(context).size.height *
                                        0.007,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: kAuthorTextColor.withOpacity(0.3),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        (book.complate / 200),
                                    height: MediaQuery.of(context).size.height *
                                        0.007,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: kPrimaryColor),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildPrice(int price, BuildContext context) {
    return Text(
      "\$$price",
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: MediaQuery.of(context).size.height / 50,
          ),
    );
  }
}
