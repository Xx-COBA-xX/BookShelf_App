import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_library_app/constants/colos.dart';

class BuildSocialMediaButtons extends StatelessWidget {
  const BuildSocialMediaButtons(
      {super.key,
      required this.socialMediaLabel,
      required this.dontHaveAccountLabel,
      required this.textButton,
      this.onPressed});
  final String socialMediaLabel;
  final String dontHaveAccountLabel;
  final String textButton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          socialMediaLabel,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildIconButton(
              icon: "assets/icons/Facbook.svg",
              onPressed: () {},
            ),
            _buildIconButton(
              icon: "assets/icons/google.svg",
              onPressed: () {},
            ),
            _buildIconButton(
              icon: "assets/icons/apple.svg",
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dontHaveAccountLabel,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: onPressed,
              child: Text(
                textButton,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: kPrimaryColor),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildIconButton(
      {required String icon, required void Function()? onPressed}) {
    return CupertinoButton(
        onPressed: onPressed,
        child: SizedBox(height: 40, width: 40, child: SvgPicture.asset(icon)));
  }
}
