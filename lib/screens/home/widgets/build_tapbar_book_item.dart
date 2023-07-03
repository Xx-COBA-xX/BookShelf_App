import 'package:flutter/material.dart';

class BuildTapBarBookItem extends StatelessWidget {
  const BuildTapBarBookItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(
          left: index == 0 ? 16 : 8, right: index == 4 ? 16 : 0),
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/water_and_ice.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Haider",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: MediaQuery.of(context).size.height / 60,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Water and Ice",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: MediaQuery.of(context).size.height / 50,
                        ),
                  ),
                  Text(
                    "\$33",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: MediaQuery.of(context).size.height / 43,
                          fontWeight: FontWeight.w600
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
