import 'package:flutter/material.dart';

class NavigationRailIcon extends StatelessWidget {
  const NavigationRailIcon({super.key, required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset(
            icon,
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
