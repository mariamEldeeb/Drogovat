import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'build_vital_item.dart';

class MobileVitalSignContainer extends StatelessWidget {
  const MobileVitalSignContainer({super.key});

  @override
  Widget build(BuildContext context) {
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
            vitalValue: '120 / 80',
            vitalIcon: heartIcon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'BP',
            vitalTextColor: const Color(0xff964003),
            vitalValue: '88 - 90',
            vitalIcon: BPIcon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'RR',
            vitalTextColor: const Color(0xff7B6902),
            vitalValue: '12 - 20',
            vitalIcon: RRIcon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'SpO2',
            vitalTextColor: const Color(0xff1C7406),
            vitalValue: '94 %',
            vitalIcon: OSIcon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'EtCO2',
            vitalTextColor: const Color(0xff028585),
            vitalValue: '35',
            vitalIcon: CO2Icon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'Temp',
            vitalTextColor: const Color(0xff06085D),
            vitalValue: '37 ℃',
            vitalIcon: TIcon,
          ),
          const SizedBox(height: 15),
          BuildVitalItem(
            vitalText: 'ECG',
            vitalTextColor: const Color(0xff3C0866),
            vitalValue: '75',
            vitalIcon: electrocardiogramIcon,
          ),
        ],
      ),
    );
  }
}
