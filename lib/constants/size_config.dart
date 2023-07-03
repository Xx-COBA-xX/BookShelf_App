import 'package:flutter/material.dart';

class MySizedBox {
  SizedBox buildSecondSizedBox(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.009,
    );
  }

  SizedBox buildMainSizedBox(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.030,
    );
  }
}