import 'package:flutter/material.dart';

class DrugImageContainer extends StatelessWidget {
  const DrugImageContainer({
    super.key,
    required this.bgColor,
    required this.imagePath,
    required this.width,
    required this.height,
  });

  final Color bgColor;
  final String imagePath;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        imagePath,
      ),
    );
  }
}
