import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_library_app/data/model/onboarding_model/onboarding_model.dart';
import 'package:my_library_app/screens/onpoarding/widgets/build_bottom_section.dart';
import 'package:my_library_app/screens/onpoarding/widgets/onboarding_widget.dart';

import '../home/home_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<OnBoardingData> myData = myOnBoardingData;

  late final PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: PageView.builder(
                  onPageChanged: (value) {
                    if (value >= currentPage) {
                      setState(() {
                        currentPage = value;
                      });
                    } else {
                      setState(() {
                        currentPage = value;
                      });
                    }
                  },
                  itemCount: myData.length,
                  itemBuilder: (context, index) {
                    return BuildOnBoardingInfo(
                      myData: myData[index],
                    );
                  })),
          Expanded(
              flex: 1,
              child: BuildOnBoardingScreenBottomSection(
                myData: myData,
                currentPage: currentPage,
                onPressed: () {
                  if (currentPage == myData.length - 1) {
                    Get.to( HomeScreen(), transition: Transition.fade);
                  } else {
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  }
                },
              )),
        ],
      ),
    );
  }
}
