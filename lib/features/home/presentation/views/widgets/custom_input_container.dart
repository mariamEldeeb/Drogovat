import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/show_time_wheel.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import 'custom_text_form_field.dart';

class CustomInputContainer extends StatelessWidget {
  CustomInputContainer({
    super.key,
    required this.isRadio,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.radio,
    required this.isTime,
  });

  final bool isRadio;
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final Widget? radio;
  final bool isTime;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return isTime
        ? ShowTimeWheel()
        : Container(
            width: w / 1.4,
            height: h / 11,
            decoration: BoxDecoration(
              color: textFormFiledColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: isRadio == true
                ? radio
                : CustomTextFormField(
                    controller: controller,
                    hintText: hintText,
                    keyboardType: keyboardType,
                  ),
          );
  }
}
