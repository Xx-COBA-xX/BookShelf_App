import 'package:flutter/cupertino.dart';
import 'package:my_library_app/constants/colos.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.buttonLabel});
  final void Function()? onPressed;
  final String buttonLabel;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.060,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
          child: Text(
            buttonLabel,
            style: const TextStyle(
                fontSize: 24, color: white, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
