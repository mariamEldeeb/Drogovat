import 'package:drogovat/core/digital_number/digital_font.dart';
import 'package:flutter/material.dart';

import 'digital_num_with_bg.dart';

class DigitalNumberContainer extends StatelessWidget {
  const DigitalNumberContainer({super.key, required this.h, required this.m});

  final int h;
  final int m;

  @override
  Widget build(BuildContext context) {
    final hours = createNumberTime(h);
    final minutes = createNumberTime(m);

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