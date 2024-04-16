import 'package:drogovat/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/data/models/drug_information.dart';

class LeftSideListViewItem extends StatelessWidget {
  const LeftSideListViewItem({super.key, required this.index});

  final int index;

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
            drugInfo[index].info,
            style: const TextStyle(
              color: Color(0xff424242),
              fontSize: 16,
            ),
          ),
          Text(
            '${drugInfo[index].duration.toString()}${drugInfo[index].measureUnit}',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
