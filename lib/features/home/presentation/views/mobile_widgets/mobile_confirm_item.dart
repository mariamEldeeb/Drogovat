import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';

class MobileConfirmItem extends StatelessWidget {
  const MobileConfirmItem(
      {super.key, required this.label, required this.outputText});

  final String label;
  final String outputText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 5),
        Container(
          width: double.infinity,
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: outputContainerColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              outputText,
              style: TextStyle(fontSize: 18),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
