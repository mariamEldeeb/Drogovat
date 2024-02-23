import 'package:drogovat/core/colors.dart';
import 'package:drogovat/core/styles.dart';
import 'package:flutter/material.dart';

class QuesListViewItem extends StatelessWidget {
  const QuesListViewItem({super.key, required this.quesText});

  final String quesText;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Row(
      children: [
        SizedBox(
          width: 120,
          child: Text(
            quesText,
            style: Styles.textStyle20,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(width: 50,),
        Container(
          width: w / 1.4,
          height: h / 11,
          decoration: BoxDecoration(
              color: textFormFiledColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
