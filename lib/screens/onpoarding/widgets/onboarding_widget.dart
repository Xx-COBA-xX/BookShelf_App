// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_library_app/constants/colos.dart';

import 'package:my_library_app/data/model/onboarding_model/onboarding_model.dart';

class BuildOnBoardingInfo extends StatelessWidget {
  const BuildOnBoardingInfo({
    Key? key,
    required this.myData,
  }) : super(key: key);

  final OnBoardingData myData;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 60,
        ),
        SizedBox(
          height: 350,
          width: 350,
          child: Lottie.asset(
            myData.image,
          ),
        ),
        Text(
          myData.title,
          style: const TextStyle(
            fontSize: 30,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            myData.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w400,
                color: kAuthorTextColor),
          ),
        ),
      ],
    );
  }
}
