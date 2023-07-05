import 'package:flutter/material.dart';
import 'package:my_library_app/screens/cart/widgets/build_cart_body.dart';
import 'package:my_library_app/screens/widgets/custom_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MyCustomAppBar(title: "My Cart"),
        body: BuildCartBodyWidget(),
      ),
    );
  }
}

// ignore: must_be_immutable
