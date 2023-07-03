import 'package:flutter/material.dart';

class BuildLogoAndTitle extends StatelessWidget {
  const BuildLogoAndTitle(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
