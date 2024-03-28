import 'package:flutter/material.dart';

import '../../../../../../core/functions/navigate.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/colors.dart';
import '../../final_revision_view.dart';
import '../../../../../../core/widgets/custom_filled_btn.dart';

buildDrugDialog() {
  return Container(
    width: 700,
    height: 430,
    padding: const EdgeInsets.only(
      top: 30,
      left: 30,
      bottom: 25,
      right: 35,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Suitable Anesthesia Drug',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 13),
        Row(
          children: [
            Image.asset(drugImage),
            const SizedBox(width: 40),
            const Expanded(
              child: Text(
                'Add 200 ml of apparent anesthetic in the pump',
                style: TextStyle(
                  fontSize: 20,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
        const SizedBox(height: 23),
        Row(
          children: [
            const Spacer(),
            CustomFilledButton(
              text: 'DONE',
              textColor: greenTextOnButtonColor,
              onTap: (){
                navigateTo(const FinalRevisionView());
              },
            ),
          ],
        ),
      ],
    ),
  );
}