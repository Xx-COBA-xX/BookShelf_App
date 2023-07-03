import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_library_app/constants/colos.dart';
import 'package:my_library_app/screens/onpoarding/onpoarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 350),
      () {
        setState(() {
          isAnimated = true;
        });
      },
    );
    Future.delayed(
      const Duration(milliseconds: 3500),
      () {
        Get.to(
          const OnBoardingScreen(),
          transition: Transition.fadeIn,
        );
      },
    );
    super.initState();
  }

  var isAnimated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: kPrimaryColor,
            ),
          ),
          AnimatedPositioned(
            curve: Curves.bounceOut,
            duration: const Duration(milliseconds: 900),
            top: isAnimated ? 200 : -300,
            left: 0,
            right: 0,
            child: Image.asset("assets/images/logo_2.png"),
          ),
        ],
      ),
    );
  }
}
