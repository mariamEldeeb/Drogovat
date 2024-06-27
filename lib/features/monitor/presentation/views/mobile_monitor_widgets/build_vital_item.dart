import 'package:flutter/material.dart';

class BuildVitalItem extends StatelessWidget {
  const BuildVitalItem({
    super.key,
    required this.vitalText,
    required this.vitalValue,
    required this.vitalIcon,
    required this.vitalTextColor,
  });

  final String vitalText;
  final String vitalValue;
  final String vitalIcon;
  final Color vitalTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: vitalTextColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            vitalText,
            style: TextStyle(
              fontSize: 20,
              color: vitalTextColor,
            ),
          ),
          Text(
            vitalValue,
            style: TextStyle(
              fontSize: 20,
              color: vitalTextColor,
            ),
          ),
          Image.asset(
            vitalIcon,
            fit: BoxFit.contain,
            width: 30,
            height: 30,
          ),
        ],
      ),
    );
  }
}
