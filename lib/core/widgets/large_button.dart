import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({super.key, required this.text, this.onTap, required this.color, required this.w, required this.h});

  final String text;
  final Function()? onTap;
  final List<Color> color;
  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            begin: Alignment(-0.5, 1),
            end: Alignment(1, 0),
            colors: color,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Icon(
              FontAwesomeIcons.arrowRight,
              color: Colors.white,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
