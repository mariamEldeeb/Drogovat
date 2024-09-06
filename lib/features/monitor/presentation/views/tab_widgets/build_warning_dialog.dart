import 'package:drogovat/core/functions/navigate.dart';
import 'package:drogovat/core/utils/assets.dart';
import 'package:drogovat/core/widgets/custom_filled_btn.dart';
import 'package:drogovat/core/widgets/custom_outline_btn.dart';
import 'package:drogovat/features/init_page/presentation/views/init_page_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../home/presentation/manager/home_cubit.dart';
import '../../manager/monitor_cubit.dart';

Widget buildWarningDialog(BuildContext context) {
  var monitorCubit = MonitorCubit.get(context);

  return Container(
    width: 380,
    height: 270,
    padding: const EdgeInsets.only(top: 30, left: 35, right: 35, bottom: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xffE5E0E0),
      border: Border(
        top: BorderSide(color: darkBlueColor, width: 6),
      ),
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
          'you are about to end this operation',
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
              width: 97,
              height: 45,
              text: 'Ok',
              textColor: Colors.white,
              onTap: () {
                HomeCubit.get(context).updatePatientWithVitals(
                  patientStatus: 'Done',
                  heartRate: monitorCubit.heartRate,
                  bloodPressure: monitorCubit.bloodPressure,
                  rasRate: monitorCubit.rasRate,
                  oxSaturation: monitorCubit.oxSaturation,
                  electrocardiogram: monitorCubit.electrocardiogram,
                  endTidalCarbon: monitorCubit.endTidalCarbon,
                  temp: monitorCubit.temp,
                );
                navigateTo(() => InitPageView());
              },
            ),
          ],
        )
      ],
    ),
  );
}
