import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';

class ConfirmItem extends StatelessWidget {
  const ConfirmItem({super.key, required this.label, required this.outputText});

  final String label;
  final String outputText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 120,
              child: Text(
               label,
                style: Styles.textStyle20,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 315,
              height: 40,
              decoration: BoxDecoration(
                color: outputContainerColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  outputText,
                  style: Styles.textStyle20,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
