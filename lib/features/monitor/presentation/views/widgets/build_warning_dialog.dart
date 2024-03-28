import 'package:drogovat/core/functions/navigate.dart';
import 'package:drogovat/core/utils/assets.dart';
import 'package:drogovat/core/widgets/custom_filled_btn.dart';
import 'package:drogovat/core/widgets/custom_outline_btn.dart';
import 'package:drogovat/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

buildWarningDialog(BuildContext context) {
  return Container(
    width: 380,
    height: 250,
    padding: const EdgeInsets.only(
      top: 30,
      left: 45,
      right: 48,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: smallContainerColor,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              warningSign,
            ),
            const Text(
              'Warning',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'you are about to end this operation ',
          style: TextStyle(color: Color(0xff4A4A4A), fontSize: 18),
        ),
        const SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomOutlineButton(
              text: 'Cancel',
              onTap: (){
                Navigator.pop(context);
              },
            ),
            CustomFilledButton(
              text: 'Yes',
              textColor: Colors.white,
              onTap: (){
                navigateOffAllTo(const HomeView());
              },
            ),
          ],
        )
      ],
    ),
  );
}