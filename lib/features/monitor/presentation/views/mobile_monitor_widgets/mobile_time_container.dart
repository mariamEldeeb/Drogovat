import 'dart:async';

import 'package:drogovat/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/date_time.dart';
import 'digital_number_container.dart';

class MobileTimeContainer extends StatefulWidget {
  const MobileTimeContainer({
    super.key,
  });

  @override
  State<MobileTimeContainer> createState() => _MobileTimeContainerState();
}

class _MobileTimeContainerState extends State<MobileTimeContainer> {
  late Timer? timer;
  String realTimeHour1 = "0",
      realTimeHour2 = "0",
      realTimeMinute1 = "0",
      realTimeMinute2 = "0";

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
        realTimeHour1 = hour.characters.first;
        realTimeHour2 = hour.characters.last;
        realTimeMinute1 = minute.characters.first;
        realTimeMinute2 = minute.characters.last;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 11,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Start',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          MobileDigitalNumberContainer(
            h: nowHour,
            m: minute,
            timeColor: Colors.black,
          ),
          const SizedBox(width: 5),
          const Text(
            'Now',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          MobileDigitalNumberContainer(
            h: int.parse(realTimeHour1 + realTimeHour2),
            m: int.parse(realTimeMinute1 + realTimeMinute2),
            timeColor: greenTimeColor,
          ),
          const SizedBox(width: 5),
          const Text(
            'End',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          MobileDigitalNumberContainer(
            h: nowHour,
            m: minute,
            timeColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
