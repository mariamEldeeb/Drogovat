import 'package:flutter/material.dart';

import '../../../../../core/data/models/drug_information.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/large_button.dart';
import 'drug_info_check.dart';

class DrugContainer extends StatelessWidget {
  const DrugContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 30, right: 5),
      height: MediaQuery.of(context).size.height,
      width: 190,
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: const Color(0xFF0E6ABF),
        ),
      ),
      child: Column(
        children: [
          const Text(
            'Suitable Anesthesia Drug',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 156,
            height: 218,
            child: Column(
              children: [
                Image.asset(
                  noBackDrugImage,
                ),
                const Text(
                  'Cetacaine',
                  style: TextStyle(
                    color: Color(0xffF72A2A),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 190,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: drugInfo.length,
              itemBuilder: (context, index) {
                return DrugInfoCheck(index: index);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
            ),
          ),
          const SizedBox(height: 15),
          const LargeButton(
            h: 37,
            w: 125,
            text: 'END',
            color: [Color(0xFFD93B3B), Color(0xFF480707)],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
