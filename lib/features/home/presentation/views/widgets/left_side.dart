import 'package:drogovat/core/utils/assets.dart';
import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/core/widgets/large_button.dart';
import 'package:drogovat/features/home/presentation/views/widgets/title_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> drugInfo = [
      'Loading',
      'Maintenance',
      'Duration',
      'Full amount',
    ];
    List<String> drugInfoDose = [
      '150 ml',
      '25 ml',
      '15 m',
      '200 ml',
    ];

    return SizedBox(
      width: 610,
      child: Column(
        children: [
          const TitleContainer(
            width: 315,
            text: 'Suitable Anesthesia Drug',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 30),
            child: Row(
              children: [
                Image.asset(drugImage),
                const SizedBox(width: 50),
                SizedBox(
                  width: 260,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: drugInfo.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            drugInfo[index],
                            style: const TextStyle(
                              color: Color(0xff424242),
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(width: 50),
                          Text(
                            drugInfoDose[index],
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 30);
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'a 200 ml of apparent anesthetic has been added in the pump ',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Spacer(),
          LargeButton(text: 'Start Operation', color: gradiantGreenColor)
        ],
      ),
    );
  }
}