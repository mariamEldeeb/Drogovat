import 'package:drogovat/core/digital_number/digital_font.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import 'digital_num_with_bg.dart';

class DigitalNumberContainer extends StatelessWidget {
  const DigitalNumberContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final hours = createNumberTime(12);
    final minutes = createNumberTime(70);

    return SizedBox(
      width: 140,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...hours,
          DigitalColon(height: 50, color: Colors.white,),
          ...minutes,
        ],
      ),
    );
  }

  List<DigitalNumWithBG> createNumberTime(int numTime){
    final parsedNumTime = numTime % 60;
    final bool isNumberTwoDigits = parsedNumTime.toString().length == 2;
    final int firstDigit = isNumberTwoDigits ? int.parse(parsedNumTime.toString()[0]) : 0;
    final int secondDigit = isNumberTwoDigits ? int.parse(parsedNumTime.toString()[1]) : parsedNumTime;
    return [
      DigitalNumWithBG(
        value: firstDigit,
      ),
      DigitalNumWithBG(
        value: secondDigit,
      ),
    ];
  }
}