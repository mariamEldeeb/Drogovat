import 'package:drogovat/core/functions/navigate.dart';
import 'package:drogovat/core/utils/assets.dart';
import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/core/widgets/drug_image_container.dart';
import 'package:drogovat/core/widgets/large_button.dart';
import 'package:drogovat/features/monitor/presentation/views/monitor_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/data/models/drug_information.dart';
import 'left_side_list_view_item.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 625,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 15, bottom: 20, left: 20, right: 15),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0x6D0A0F22),
            blurRadius: 3,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const DrugImageContainer(
                bgColor: innerContainerColor,
                imagePath: Drug1Image,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Suitable Anesthesia Drug',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Cetacaine',
                    style: TextStyle(
                      color: Color(0xff9C0000),
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 530,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: drugInfo.length,
              itemBuilder: (context, index) {
                return LeftSideListViewItem(index: index);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 5);
              },
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'a 200 ml of apparent anesthetic has been added in the pump ',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Spacer(),
          LargeButton(
            w: 260,
            h: 52,
            text: 'Start Operation',
            color: gradiantGreenColor,
            onTap: () {
              navigateTo(const MonitorView());
            },
          ),
        ],
      ),
    );
  }
}
