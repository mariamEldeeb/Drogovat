import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class MeasureUnit extends StatelessWidget {
  const MeasureUnit({super.key, required this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 109,
      height: 29,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: smallContainerColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text!,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const Icon(
            Icons.arrow_drop_down,
          ),
        ],
      ),
    );
  }
}
