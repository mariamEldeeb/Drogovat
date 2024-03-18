import 'package:drogovat/features/monitor/presentation/views/widgets/digital_number_container.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 15, bottom: 15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 6.95,
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 2,
          color: const Color(0xFF0E6ABF),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Start',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          DigitalNumberContainer(),
          SizedBox(width: 60),
          Text(
            'Now',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          DigitalNumberContainer(),
          SizedBox(width: 60),
          Text(
            'End',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          DigitalNumberContainer(),
        ],
      ),
    );
  }
}
