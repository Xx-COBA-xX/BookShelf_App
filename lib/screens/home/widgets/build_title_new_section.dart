import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/colos.dart';

class BuildTitleNewSection extends StatelessWidget {
  const BuildTitleNewSection({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 20,
                ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Text(
              "SeeAll",
              style: TextStyle(
                fontSize: 15,
                color: kPrimaryColor,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
