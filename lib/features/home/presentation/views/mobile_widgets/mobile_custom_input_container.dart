import 'package:drogovat/features/home/presentation/views/mobile_widgets/show_mobile_time_wheel.dart';
import 'package:flutter/material.dart';

import 'mobile_custom_text_field.dart';

class MobileCustomInputContainer extends StatelessWidget {
  MobileCustomInputContainer({
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
    return isTime
        ? ShowMobileTimeWheel()
        : Container(
            child: isRadio == true
                ? radio
                : MobileCustomTextFormField(
                    controller: controller,
                    hintText: hintText,
                    keyboardType: keyboardType,
                  ),
          );
  }
}
