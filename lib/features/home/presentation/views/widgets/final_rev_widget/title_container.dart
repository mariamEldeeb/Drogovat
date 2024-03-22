import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key, required this.text, required this.width});

  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 48,
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}