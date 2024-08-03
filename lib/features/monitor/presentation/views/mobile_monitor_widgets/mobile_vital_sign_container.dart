import 'package:drogovat/features/monitor/presentation/manager/monitor_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'build_vital_item.dart';

class MobileVitalSignContainer extends StatelessWidget {
  const MobileVitalSignContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = MonitorCubit.get(context);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.9,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Column(
        children: [
          BuildVitalItem(
            vitalText: 'HR',
            vitalTextColor: const Color(0xff630101),
            vitalValue: cubit.heartRate,
            vitalIcon: heartIcon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'BP',
            vitalTextColor: const Color(0xff964003),
            vitalValue: cubit.bloodPressure,
            vitalIcon: BPIcon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'RR',
            vitalTextColor: const Color(0xff7B6902),
            vitalValue: cubit.rasRate,
            vitalIcon: RRIcon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'SpO2',
            vitalTextColor: const Color(0xff1C7406),
            vitalValue: cubit.oxSaturation,
            vitalIcon: OSIcon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'EtCO2',
            vitalTextColor: const Color(0xff028585),
            vitalValue: cubit.endTidalCarbon,
            vitalIcon: CO2Icon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'Temp',
            vitalTextColor: const Color(0xff06085D),
            vitalValue: cubit.temp,
            vitalIcon: TIcon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'ECG',
            vitalTextColor: const Color(0xff3C0866),
            vitalValue: cubit.electrocardiogram,
            vitalIcon: electrocardiogramIcon,
          ),
        ],
      ),
    );
  }
}
