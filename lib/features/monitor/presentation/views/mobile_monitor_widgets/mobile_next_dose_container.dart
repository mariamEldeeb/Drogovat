import 'package:drogovat/core/widgets/custom_filled_btn.dart';
import 'package:drogovat/features/monitor/presentation/views/mobile_monitor_widgets/build_next_amount_dose.dart';
import 'package:drogovat/features/monitor/presentation/views/tab_widgets/build_warning_dialog.dart';
import 'package:flutter/material.dart';

import '../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../core/utils/colors.dart';
import '../tab_widgets/progress_indecator.dart';
import 'build_next_potion_container.dart';

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
                NextPotionTimeContainer(),
                SizedBox(width: 10),
                BuildNextAmountDose(),
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
}
