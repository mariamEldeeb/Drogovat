import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class BuildNextAmountDose extends StatelessWidget {
  const BuildNextAmountDose({super.key});

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
            'Amount of dose:',
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              '25 ml',
              style: TextStyle(
                color: greenTimeColor,
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
