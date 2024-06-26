import 'package:flutter/material.dart';

import 'mobile_custom_input_container.dart';

class MobileQuesItem extends StatelessWidget {
  const MobileQuesItem({
    super.key,
    required this.label,
    this.hintText,
    this.controller,
    required this.isRadio,
    required this.isTime,
    this.inputType,
    this.radio,
  });

  final String label;
  final String? hintText;
  final TextEditingController? controller;
  final bool isRadio;
  final bool isTime;
  final TextInputType? inputType;
  final Widget? radio;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        MobileCustomInputContainer(
          controller: controller,
          isRadio: isRadio,
          keyboardType: inputType,
          hintText: hintText,
          isTime: isTime,
          radio: radio,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
