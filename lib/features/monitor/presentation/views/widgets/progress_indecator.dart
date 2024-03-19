import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

class CustomProgressIndicator extends StatefulWidget {
  const CustomProgressIndicator({super.key});

  @override
  State<CustomProgressIndicator> createState() =>
      _CustomProgressIndicatorState();
}

class _CustomProgressIndicatorState extends State<CustomProgressIndicator> {


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        children: [
          Container(
            height: 171,
            width: 30,
            // decoration: BoxDecoration(
            //   gradient: const LinearGradient(
            //     begin: Alignment(1.00, 0.02),
            //     end: Alignment(-1, -0.02),
            //     colors: [
            //       Color(0xFFB6B6B6),
            //       Color(0xFFD9D9D9),
            //       Color(0xFFF6F6F6),
            //       Color(0xFFD9D9D9),
            //       Color(0xFFB6B6B6)
            //     ],
            //   ),
            //   borderRadius: BorderRadius.circular(30),
            // ),
            child: LiquidLinearProgressIndicator(
              value: 0.7,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blueAccent),
              backgroundColor: Colors.white,
              borderRadius: 30,
              direction: Axis.vertical,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            '75 %',
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
