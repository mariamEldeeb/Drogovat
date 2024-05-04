import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    // required this.controller,
    this.validate,
    required this.type,
  });

  final String? hintText;

  // final TextEditingController controller;
  final String? Function(String?)? validate;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      margin: const EdgeInsets.only(left: 15),
      child: TextFormField(
        // controller: controller,
        onFieldSubmitted: (value) {
          print(value);
        },
        style: const TextStyle(
          fontSize: 22,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: const TextStyle(
            color: hintTextColor,
            fontSize: 22,
          ),
        ),
        validator: validate,
        keyboardType: type,
      ),
    );
  }
}
