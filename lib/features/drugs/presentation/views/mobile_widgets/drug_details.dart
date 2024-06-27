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
        body: Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //  Background
              Stack(
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
                      Icons.arrow_back,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.17,
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  decoration: const BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 65),
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
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: DrugImageContainer(
                imagePath: '${drugs[index].drugImage}',
                width: 100,
                height: 100,
                bgColor: drugItemConColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBackground(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: darkBlueColor,
          child: Image.asset(
            fadeLogo,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            IconlyLight.arrow_left,
            color: Colors.white,
            size: 40,
          ),
        ),
      ],
    );
  }
}
