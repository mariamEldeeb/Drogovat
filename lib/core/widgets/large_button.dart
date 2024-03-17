import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({super.key, required this.text, this.onTap, required this.color});

  final String text;
  final Function()? onTap;
  final List<Color> color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            begin: const Alignment(0, -1),
            end: const Alignment(0, 1),
            colors: color,
            stops: const <double>[0, 1],
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3f000000),
              offset: Offset(0, 4),
              blurRadius: 2,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
