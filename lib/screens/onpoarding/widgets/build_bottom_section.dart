// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:my_library_app/constants/colos.dart';
import 'package:my_library_app/data/model/onboarding_model/onboarding_model.dart';
import 'package:my_library_app/screens/auth/login/login_screen.dart';
import 'package:my_library_app/screens/home/home_screen.dart';

class BuildOnBoardingScreenBottomSection extends StatefulWidget {
  const BuildOnBoardingScreenBottomSection(
      {Key? key,
      required this.myData,
      required this.currentPage,
      this.onPressed})
      : super(key: key);

  final List<OnBoardingData> myData;
  final int currentPage;
  final void Function()? onPressed;

  @override
  State<BuildOnBoardingScreenBottomSection> createState() =>
      _BuildOnBoardingScreenBottomSectionState();
}

class _BuildOnBoardingScreenBottomSectionState
    extends State<BuildOnBoardingScreenBottomSection> {
  bool isLogin = false;
  @override
  void initState() {
    if (FirebaseAuth.instance.currentUser == null) {
      isLogin = false;
    } else {
      isLogin = true;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        _buildCupertinoButton(
          title: "Skip",
          onPressed: () {
            Get.to(
              isLogin ?  HomeScreen() : LoginScreen(),
            );
          },
        ),
        _dotIndecetor(),
        _buildCupertinoButton(title: "Next", onPressed: widget.onPressed)
      ]),
    );
  }

  Widget _buildCupertinoButton({
    required String title,
    required void Function()? onPressed,
  }) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 19,
          color: kTitleTextColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _dotIndecetor() {
    return Row(
      children: List.generate(widget.myData.length, (index) {
        return _buildAnimatedContainer(index);
      }),
    );
  }

  Widget _buildAnimatedContainer(int index) {
    return AnimatedContainer(
      padding: const EdgeInsets.only(right: 4),
      margin: const EdgeInsets.only(right: 4, top: 5),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: index == widget.currentPage
            ? kPrimaryColor
            : kAuthorTextColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 10,
      width: index == widget.currentPage ? 24 : 10,
    );
  }
}
