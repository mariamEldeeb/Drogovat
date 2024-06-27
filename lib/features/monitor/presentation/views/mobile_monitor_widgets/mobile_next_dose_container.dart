import 'package:drogovat/core/utils/date_time.dart';
import 'package:drogovat/core/widgets/custom_filled_btn.dart';
import 'package:drogovat/features/monitor/presentation/views/mobile_monitor_widgets/digital_number_container.dart';
import 'package:drogovat/features/monitor/presentation/views/tab_widgets/build_warning_dialog.dart';
import 'package:flutter/material.dart';

import '../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../core/utils/colors.dart';
import '../tab_widgets/progress_indecator.dart';

class MobileNextDoseContainer extends StatelessWidget {
  const MobileNextDoseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              children: [
                buildNextPoseContainer(),
                SizedBox(width: 10),
                buildAmountOfPoseContainer(),
              ],
            ),
            SizedBox(height: 15),
            CustomFilledButton(
              text: 'End Operation',
              width: 240,
              height: 50,
              textColor: Colors.white,
              onTap: () {
                showCustomDialog(
                  context: context,
                  child: buildWarningDialog(context),
                  barrierColor: warningDialogBarrierColor,
                );
              },
            ),
          ],
        ),
        CustomProgressIndicator(),
      ],
    );
  }

  Container buildNextPoseContainer() {
    return Container(
      height: 100,
      width: 160,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Next Potion at:',
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(height: 8),
          Center(
            child: MobileDigitalNumberContainer(
              h: nowHour,
              m: minute,
              timeColor: greenTimeColor,
            ),
          ),
        ],
      ),
    );
  }

  Container buildAmountOfPoseContainer() {
    return Container(
      height: 100,
      width: 160,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amount of dose:',
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              '25 ml',
              style: TextStyle(
                color: greenTimeColor,
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
