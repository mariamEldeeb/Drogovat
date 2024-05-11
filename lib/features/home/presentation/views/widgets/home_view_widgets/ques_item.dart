import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../custom_input_container.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({
    super.key,
    required this.label,
    required this.isRadio,
    required this.isHeight,
    required this.isWeight,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.radio,
  });

  final String label;
  final bool isRadio;
  final bool isHeight;
  final bool isWeight;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Widget? radio;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 120,
          child: Text(
            label,
            style: Styles.textStyle20,
            softWrap: true,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(width: 50),
        CustomInputContainer(
          controller: controller,
          isRadio: isRadio,
          isHeight: isHeight,
          isWeight: isWeight,
          hintText: hintText,
          keyboardType: keyboardType,
          radio: radio,
        ),
      ],
    );
  }
}
