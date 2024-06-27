import 'package:flutter/material.dart';

import 'build_dose_history.dart';

class MobilePreviousDoseContainer extends StatelessWidget {
  const MobilePreviousDoseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4.5,
      padding: const EdgeInsets.only(left: 10, right: 15, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: BuildDoseHistory(),
    );
  }
}
