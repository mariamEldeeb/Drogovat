import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/show_time_wheel.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import 'custom_text_form_field.dart';
import 'home_view_widgets/measure_unit.dart';

class CustomInputContainer extends StatelessWidget {
  CustomInputContainer({
    super.key,
    required this.isRadio,
    required this.isHeight,
    required this.isWeight,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.radio,
    required this.isTime,
  });

  final bool isRadio;
  final bool isHeight;
  final bool isWeight;
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
                : Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          controller: controller,
                          hintText: hintText,
                          keyboardType: keyboardType,
                        ),
                      ),
                      if (isHeight == true)
                        const MeasureUnit(
                          measureUnitText: ['cm', 'inches', 'feet'],
                          index: 0,
                        )
                      else if (isWeight == true)
                        const MeasureUnit(
                          measureUnitText: ['kg', 'pound'],
                          index: 1,
                        )
                      else
                        const SizedBox(),
                      const SizedBox(width: 35),
                    ],
                  ),
          );
  }
}
