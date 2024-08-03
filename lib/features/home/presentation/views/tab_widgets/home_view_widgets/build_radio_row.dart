import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';

class MyRadioRow extends StatelessWidget {
  MyRadioRow({
    super.key,
    this.radio1Text,
    this.radio2Text,
    this.radio1Value,
    this.radio2Value,
    this.groupValue,
  });

  final String? radio1Text;
  final String? radio2Text;
  final String? radio1Value;
  final String? radio2Value;
  final String? groupValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 200,
          child: RadioListTile(
            title: Text(
              radio1Text ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: darkBlueColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            fillColor: WidgetStateColor.resolveWith(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return darkBlueColor;
                }
                return Colors.black45;
              },
            ),
            value: radio1Value,
            groupValue: groupValue,
            onChanged: (val) {},
          ),
        ),
        SizedBox(
          width: 200,
          child: RadioListTile(
            title: Text(
              radio2Text ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: darkBlueColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            fillColor: WidgetStateColor.resolveWith(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return darkBlueColor;
                }
                return Colors.black45;
              },
            ),
            value: radio2Value,
            groupValue: groupValue,
            onChanged: (val) {},
          ),
        ),
      ],
    );
  }
}
