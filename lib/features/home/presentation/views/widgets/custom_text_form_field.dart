import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../manager/home_cubit.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.hintText,});

  final String? hintText;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 450,
      margin: const EdgeInsets.only(left: 15),
      child: TextFormField(
        style: const TextStyle(
          color: darkBlueColor,
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
      ),
    );
  }
}
