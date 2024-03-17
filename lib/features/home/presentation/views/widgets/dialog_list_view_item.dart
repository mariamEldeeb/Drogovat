import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../data/models/question_model.dart';

class DialogListViewItem extends StatelessWidget {
  const DialogListViewItem({super.key, required this.index,});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 120,
          child: Text(
            inputs[index].inputText,
            style: const TextStyle(
              color: darkBlueColor,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 315,
          height: 40,
          decoration: BoxDecoration(
            color: outputContainerColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'outputText',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}