import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/functions/navigate.dart';
import '../../../../../core/widgets/drug_image_container.dart';
import 'drug_details.dart';

class DrugsListViewItem extends StatelessWidget {
  const DrugsListViewItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(
          DrugDetails(
            index: index,
          ),
        );
      },
      child: Container(
        height: 97,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 12, left: 10, bottom: 5, right: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            DrugImageContainer(
              width: 67,
              height: 70,
              bgColor: drugItemConColor,
              imagePath: '${drugs[index].drugImage}',
            ),
            const SizedBox(width: 19),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${drugs[index].drugName}',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Press to view details',
                    style: TextStyle(
                      color: Color(0xFF838383),
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
