import 'package:drogovat/core/utils/colors.dart';
import 'package:flutter/material.dart';

class BuildListWheelItem extends StatelessWidget {
  const BuildListWheelItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 40,
            color: darkBlueColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
