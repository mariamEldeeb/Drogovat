import 'dart:async';

import 'package:drogovat/core/utils/date_time.dart';
import 'package:drogovat/features/monitor/presentation/views/widgets/digital_number_container.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/colors.dart';

class TimeContainer extends StatefulWidget {
  const TimeContainer({
    super.key,
  });

  @override
  State<TimeContainer> createState() => _TimeContainerState();
}

class _TimeContainerState extends State<TimeContainer> {
  late Timer? timer;
  String hour1 = "0", hour2 = "0", minute1 = "0", minute2 = "0";

  final df = DateFormat('HH:mm');

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final time = DateTime.now();
      final printable = df.format(time);
      final splits = printable.split(":");
      final hour = splits[0];
      final minute = splits[1];
      setState(() {
        hour1 = hour.characters.first;
        hour2 = hour.characters.last;
        minute1 = minute.characters.first;
        minute2 = minute.characters.last;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 15, bottom: 15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 6.95,
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: const Color(0xFF0E6ABF),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Start',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          DigitalNumberContainer(
            h: hour,
            m: minute,
          ),
          const SizedBox(width: 60),
          const Text(
            'Now',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          DigitalNumberContainer(
            h: int.parse(hour1 + hour2),
            m: int.parse(minute1 + minute2),
          ),
          const SizedBox(width: 60),
          const Text(
            'End',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          DigitalNumberContainer(
            h: hour,
            m: minute,
          ),
        ],
      ),
    );
  }
}
