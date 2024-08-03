import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class MobileCustomTextFormField extends StatelessWidget {
  const MobileCustomTextFormField({
    super.key,
    this.hintText,
    this.controller,
    this.validate,
    this.keyboardType,
  });

  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: const TextStyle(
            color: hintTextColor,
            fontSize: 19,
          ),
        ),
        cursorColor: darkBlueColor,
        validator: (value) {
          if (value!.isEmpty) {
            return 'This can\'t be empty';
          }
          return null;
        },
      ),
    );
  }
}
