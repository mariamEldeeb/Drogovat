import 'package:drogovat/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key, required this.typeOfDanger});

  final String typeOfDanger;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 530,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xffDE0000), width: 4),
        color: Colors.black,
      ),
      child: Column(
        children: [
          Image.asset(alertIcon),
          SizedBox(height: 30),
          Text(
            typeOfDanger,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
