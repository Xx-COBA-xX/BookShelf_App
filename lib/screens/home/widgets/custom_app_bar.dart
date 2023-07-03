// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_library_app/constants/colos.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello HAIDER",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: const Color(0xff212121),
                    fontSize: MediaQuery.of(context).size.height / 30),
              ),
              Text(
                "What book would you like to read?",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: kPrimaryColor,
                    fontSize: MediaQuery.of(context).size.height / 60),
              ),
            ],
          ),
          Stack(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/notefication_icon.svg",
                  height: 33,
                ),
                onPressed: () {
                  // print(MediaQuery.of(context).size.height);
                },
              ),
              const Positioned(
                right: 10,
                top: 10,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
