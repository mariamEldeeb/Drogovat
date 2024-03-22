import 'package:drogovat/features/monitor/presentation/views/widgets/dose_info_time.dart';
import 'package:drogovat/features/monitor/presentation/views/widgets/previous_dose.dart';
import 'package:drogovat/features/monitor/presentation/views/widgets/progress_indecator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class DoseInfoContainer extends StatelessWidget {
  const DoseInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: 745, //MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3.55,
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: const Color(0xFF0E6ABF),
        ),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: DoseInfoTime(),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 15),
          const SizedBox(
            width: 230,
            child: PreviousDose(),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 22,),
          const CustomProgressIndicator(),
        ],
      ),
    );
  }
}
