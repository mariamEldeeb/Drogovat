import 'package:drogovat/core/utils/colors.dart';
import 'package:flutter/material.dart';

class BuildMobileListWheelItem extends StatelessWidget {
  const BuildMobileListWheelItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30,
          color: darkBlueColor,
        ),
      ),
    );
  }
}
