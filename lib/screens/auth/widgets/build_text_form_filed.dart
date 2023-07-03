import 'package:flutter/material.dart';

import '../../../constants/colos.dart';

class BuildTextFormFiled extends StatelessWidget {
  const BuildTextFormFiled(
      {super.key,
      required this.hint,
      this.validator,
      this.onSaved,
      required this.autovalidateMode});

  final String hint;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final AutovalidateMode autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        border: _buildBorder(),
        focusedBorder: _buildBorder(),
        disabledBorder: _buildBorder(),
        enabledBorder: _buildBorder(),
        filled: true,
        fillColor: kFiledColor,
        hintText: hint,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 15),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: white,
        ));
  }
}
