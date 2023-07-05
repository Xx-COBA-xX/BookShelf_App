import 'package:flutter/material.dart';

import '../../../constants/colos.dart';
import '../../auth/widgets/custom_button.dart';

class BuildCartPaymentContainer extends StatelessWidget {
  const BuildCartPaymentContainer({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(16),
      width: size.width,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.3),
            offset: const Offset(0, 0),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Items price',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: size.height / 40),
              ),
              Text(
                '\$20',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: size.height / 40),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tax',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: size.height / 40),
              ),
              Text(
                '\$5',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: size.height / 40),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: size.height / 30, color: kTitleTextColor),
              ),
              Text(
                '\$25',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: size.height / 30, color: kTitleTextColor),
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          const CustomButton(buttonLabel: "Payment Now"),
        ],
      ),
    );
  }
}
