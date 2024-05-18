import 'package:drogovat/core/utils/colors.dart';
import 'package:flutter/material.dart';

class LeftSideListItem extends StatelessWidget {
  const LeftSideListItem({
    super.key,
    required this.label,
    required this.dose,
    required this.measureUnit,
  });

  final String label;
  final String dose;
  final String measureUnit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: labelTextColor,
              fontSize: 18,
            ),
          ),
          Text(
            '${dose} ${measureUnit}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
