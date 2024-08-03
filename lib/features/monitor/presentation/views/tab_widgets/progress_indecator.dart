import 'package:drogovat/device_info.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      child: DeviceInfo.isTablet
          ? RotatedBox(
              quarterTurns: -1,
              child: LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                width: 200,
                lineHeight: 35,
                percent: 0.5,
                center: Text(
                  "50%",
                  style: new TextStyle(fontSize: 20),
                ),
                backgroundColor: Colors.white,
                barRadius: Radius.circular(30),
                progressColor: Colors.blueAccent,
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(right: 15),
              child: RotatedBox(
                quarterTurns: -1,
                child: LinearPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  width: 200,
                  lineHeight: 35,
                  percent: 0.5,
                  center: Text(
                    "50%",
                    style: new TextStyle(fontSize: 20),
                  ),
                  backgroundColor: Colors.white,
                  barRadius: Radius.circular(15),
                  progressColor: Colors.blue,
                ),
              ),
            ),
    );
  }
}
