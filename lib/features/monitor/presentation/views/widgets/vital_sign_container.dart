import 'package:drogovat/features/monitor/presentation/views/widgets/vital_list_view_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../data/models/vital_model.dart';

class VitalSignContainer extends StatelessWidget {
  const VitalSignContainer({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 50, top: 15),
      width: MediaQuery.of(context).size.width, //745, //MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.25,
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: const Color(0xFF0E6ABF),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 330,
            height: 300,
            child: ListView.separated(
              itemCount: 3,
                itemBuilder: (context, index){
                  return VitalListViewItem(
                    vitalText: vitals[index].vitalText,
                    vitalValue: vitals[index].vitalValue,
                    color: vitals[index].vitalValueColor,
                    index: index,
                  );
                },
              separatorBuilder: (context, index){
                return const SizedBox(height: 15);
              },
            ),
          ),
          SizedBox(
            width: 330,
            height: 250,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index){
                return VitalListViewItem(
                  vitalText: vitals[index + 3].vitalText,
                  vitalValue: vitals[index + 3].vitalValue,
                  color: vitals[index + 3].vitalValueColor,
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}