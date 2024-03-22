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
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            height: 171,
            width: 30,
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
