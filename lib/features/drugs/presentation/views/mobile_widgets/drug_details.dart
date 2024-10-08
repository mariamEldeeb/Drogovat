import 'package:drogovat/features/drugs/presentation/views/mobile_widgets/drug_dose_info_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/drug_image_container.dart';

class DrugDetails extends StatelessWidget {
  const DrugDetails({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkBlueColor,
        body: Column(
          children: [
            buildBackground(),
            buildContent(),
          ],
        ),
      ),
    );
  }

  Widget buildBackground() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            fadeLogo,
            fit: BoxFit.contain,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            IconlyLight.arrow_left,
            size: 40,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget buildContent() {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 25, top: 90),
            decoration: const BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34),
                topRight: Radius.circular(34),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${drugs[index].drugName}',
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    '${drugs[index].drugDesc}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 30),
                  DrugDoseInfoContainer(
                    value: '${drugs[index].drugLoadingDose} ml',
                    label: 'Loading',
                  ),
                  const SizedBox(height: 30),
                  DrugDoseInfoContainer(
                    value: '${drugs[index].drugMaintenanceDose} ml',
                    label: 'Maintenance',
                  ),
                  const SizedBox(height: 30),
                  DrugDoseInfoContainer(
                    value: '${drugs[index].drugActiveDuration} ml',
                    label: 'Active duration',
                  ),
                  const SizedBox(height: 30),
                  DrugDoseInfoContainer(
                    value: '${drugs[index].drugFullAmount} ml',
                    label: 'Full amount',
                  ),
                  const SizedBox(height: 30),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Warning ',
                          style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text:
                              '* These numbers are approximate depending on the patient\'s condition',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          DrugImageContainer(
            imagePath: '${drugs[index].drugImage}',
            width: 120,
            height: 120,
            bgColor: drugItemConColor,
          ),
        ],
      ),
    );
  }
}
