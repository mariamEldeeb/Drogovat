import 'package:drogovat/core/functions/show_custom_dialog.dart';
import 'package:drogovat/features/monitor/presentation/views/tab_widgets/dose_info_time.dart';
import 'package:drogovat/features/monitor/presentation/views/tab_widgets/previous_dose.dart';
import 'package:drogovat/features/monitor/presentation/views/tab_widgets/progress_indecator.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import 'build_warning_dialog.dart';

class TabDoseInfoContainer extends StatelessWidget {
  const TabDoseInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      //745, //MediaQuery.of(context).size.width,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          SizedBox(
            width: MediaQuery.of(context).size.width / 22,
          ),
          const CustomProgressIndicator(),
          FilledButton(
            onPressed: () {
              showCustomDialog(
                context: context,
                child: buildWarningDialog(context),
                barrierColor: warningDialogBarrierColor,
              );
            },
            child: Text(
              'End',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
