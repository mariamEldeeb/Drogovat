import 'package:drogovat/core/functions/navigate.dart';
import 'package:drogovat/core/utils/assets.dart';
import 'package:drogovat/core/widgets/custom_filled_btn.dart';
import 'package:drogovat/core/widgets/custom_outline_btn.dart';
import 'package:drogovat/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../home/presentation/manager/home_cubit.dart';
import '../../manager/monitor_cubit.dart';

buildWarningDialog(BuildContext context) {
  var monitorCubit = MonitorCubit.get(context);

  return Container(
    width: 380,
    height: 250,
    padding: const EdgeInsets.only(top: 30, left: 45, right: 48),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: smallContainerColor,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(warningSign),
            const Text(
              'Warning',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        const Text(
          'you are about to end this operation ',
          style: TextStyle(color: Color(0xff4A4A4A), fontSize: 18),
        ),
        const SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomOutlineButton(
              text: 'Cancel',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            CustomFilledButton(
              width: 96,
              height: 36,
              text: 'Yes',
              textColor: Colors.white,
              onTap: () {
                HomeCubit.get(context).updatePatientWithVitals(
                  heartRate: monitorCubit.heartRate,
                  bloodPressure: monitorCubit.bloodPressure,
                  rasRate: monitorCubit.rasRate,
                  oxSaturation: monitorCubit.oxSaturation,
                  electrocardiogram: monitorCubit.electrocardiogram,
                  endTidalCarbon: monitorCubit.endTidalCarbon,
                  temp: monitorCubit.temp,
                );
                navigateTo(const HomeView());
              },
            ),
          ],
        )
      ],
    ),
  );
}
