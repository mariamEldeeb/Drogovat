import 'package:drogovat/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../custom_input_container.dart';

class QuesListViewItem extends StatelessWidget {
  const QuesListViewItem({super.key, required this.quesText, required this.index});

  final String quesText;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 120,
          child: Text(
            quesText,
            style: Styles.textStyle20,
            softWrap: true,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(width: 50,),
        CustomInputContainer(index: index,),
      ],
    );
  }
}