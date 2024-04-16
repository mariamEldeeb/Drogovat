import 'package:flutter/material.dart';

class DrugImageContainer extends StatelessWidget {
  const DrugImageContainer({
    super.key,
    required this.bgColor,
    required this.imagePath,
  });

  final Color bgColor;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: Image.asset(imagePath),
    );
  }
}