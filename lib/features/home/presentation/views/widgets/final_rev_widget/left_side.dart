import 'package:drogovat/core/functions/navigate.dart';
import 'package:drogovat/core/utils/assets.dart';
import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/core/widgets/drug_image_container.dart';
import 'package:drogovat/core/widgets/large_button.dart';
import 'package:drogovat/features/home/presentation/views/widgets/final_rev_widget/left_side_list_view_item.dart';
import 'package:drogovat/features/home/presentation/views/widgets/final_rev_widget/title_container.dart';
import 'package:drogovat/features/monitor/presentation/views/monitor_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../../core/data/models/drug_information.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(top: 25, bottom: 32),
      child: Column(
        children: [
          const TitleContainer(
            width: 315,
            text: 'Suitable Anesthesia Drug',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 30),
            child: Row(
              children: [
                const DrugImageContainer(
                  bgColor: innerContainerColor,
                  imagePath: Drug1Image,
                ),
                const SizedBox(width: 50),
                SizedBox(
                  width: 260,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: drugInfo.length,
                    itemBuilder: (context, index) {
                      return LeftSideListViewItem(index: index);
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
          LargeButton(
            w: 200,
            h: 60,
            text: 'Start Operation',
            color: gradiantGreenColor,
            onTap: () {
              navigateTo(const MonitorView());
            },
          )
        ],
      ),
    );
  }
}
