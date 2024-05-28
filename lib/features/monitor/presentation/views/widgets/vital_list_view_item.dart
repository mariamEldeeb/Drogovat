import 'package:flutter/material.dart';

class VitalListViewItem extends StatelessWidget {
  const VitalListViewItem({
    super.key,
    required this.vitalText,
    required this.vitalValue,
    required this.color,
  });

  final String vitalText;
  final String vitalValue;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          vitalText,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          vitalValue,
          style: TextStyle(
            fontSize: 50,
            color: color,
            height: 0,
          ),
        ),
      ],
    );
  }
}
