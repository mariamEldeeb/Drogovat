import 'package:flutter/material.dart';

class EdgePanel extends StatelessWidget {
  const EdgePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -40,
      top: 35,
      child: Container(
        width: 80,
        height: 80,
        decoration: const ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF0E6ABF), Color(0xFF37C3CC)],
          ),
          shape: OvalBorder(),
          shadows: [
            BoxShadow(
              color: Color(0xFF000000),
              blurRadius: 10.20,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: const Stack(
          alignment: Alignment.centerLeft,
          children: [
            Positioned(
              left: 10,
              child: Icon(
                  Icons.arrow_forward_ios,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
