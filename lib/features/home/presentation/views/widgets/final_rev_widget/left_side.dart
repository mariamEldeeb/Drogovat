import 'package:drogovat/core/cache_helper.dart';
import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/core/widgets/drug_image_container.dart';
import 'package:drogovat/core/widgets/large_button.dart';
import 'package:drogovat/features/monitor/presentation/views/monitor_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/constants.dart';
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
              DrugImageContainer(
                width: 180,
                height: 180,
                bgColor: innerContainerColor,
                imagePath: '${drugs[1].drugImage}',
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
                    '${drugs[1].drugName}',
                    style: TextStyle(
                      color: Color(0xff9C0000),
                      fontSize: 27,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Column(
            children: [
              LeftSideListItem(
                label: 'Loading',
                dose: '${drugs[1].drugLoadingDose}',
                measureUnit: 'ml',
              ),
              SizedBox(height: 5),
              LeftSideListItem(
                label: 'Maintenance',
                dose: '${drugs[1].drugMaintenanceDose}',
                measureUnit: 'ml',
              ),
              SizedBox(height: 5),
              LeftSideListItem(
                label: 'Duration',
                dose: '${drugs[1].drugActiveDuration}',
                measureUnit: 'm',
              ),
              SizedBox(height: 5),
              LeftSideListItem(
                label: 'Full Amount',
                dose: '${drugs[1].drugFullAmount}',
                measureUnit: 'ml',
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'a ',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                TextSpan(
                    text: '${drugs[1].drugFullAmount}',
                    style: TextStyle(
                        color: Color(0xffA80707),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' ml of apparent anesthetic has been added in the pump',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ],
            ),
          ),
          const Spacer(),
          LargeButton(
            w: 260,
            h: 52,
            text: 'Start Operation',
            color: gradiantGreenColor,
            onTap: () {
              globalPatientId = CacheHelper.getData(key: 'pId');
              Get.to(() => MonitorView());
            },
          ),
        ],
      ),
    );
  }
}
