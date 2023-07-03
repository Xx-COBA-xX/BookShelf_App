// ignore_for_file: must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_library_app/screens/cart/cart_screen.dart';
import 'package:my_library_app/screens/categories/category_screen.dart';
import 'package:my_library_app/screens/library/library_screen.dart';
import 'package:my_library_app/screens/profile/profile_screen.dart';

import '../../constants/colos.dart';
import '../../data/model/bottom_bav_bar/bottom_nav_bar.dart';
import '../../data/model/bottom_bav_bar/icon_model.dart';
import 'main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int navBarIndex = 0;
  List<IconNav> myNavBarIcons = BottomNavBarIcons().icons;

  final List<Widget> myScreen = [
    MainScreen(),
     CategoryScreen(),
    const LibraryScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: myScreen[navBarIndex],
        bottomNavigationBar: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          // margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(color: white, boxShadow: [
            BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                offset: const Offset(0, -3),
                blurRadius: 15,
                spreadRadius: 1),
          ]),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                myNavBarIcons.length,
                (index) {
                  return CupertinoButton(
                    onPressed: () {
                      setState(() {
                        navBarIndex = index;
                      });
                    },
                    child: Container(
                      child: SvgPicture.asset(
                        navBarIndex == index
                            ? myNavBarIcons[index].activIcon
                            : myNavBarIcons[index].icon,
                        height: index == 2 ? 29.5 : 23.5,
                        width: index == 2 ? 29.5 : 23.5,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
