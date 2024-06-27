import 'package:flutter/material.dart';

import '../../../../../../core/data/models/drug_information.dart';

class DrugInfoCheck extends StatelessWidget {
  const DrugInfoCheck({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          drugInfo[index].info,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        const SizedBox(width: 35),
        Text(
          '${drugInfo[index].duration.toString()}${drugInfo[index].measureUnit}',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
