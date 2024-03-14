import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.hintText});

  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      margin: const EdgeInsets.only(left: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: const TextStyle(
            color: hintTextColor,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
