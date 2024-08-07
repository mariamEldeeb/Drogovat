import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/date_time.dart';
import 'digital_number_container.dart';

class NextPotionTimeContainer extends StatelessWidget {
  const NextPotionTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 160,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Next Potion at:',
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(height: 8),
          Center(
            child: MobileDigitalNumberContainer(
              h: nowHour,
              m: minute,
              timeColor: greenTimeColor,
            ),
          ),
        ],
      ),
    );
  }
}
