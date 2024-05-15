import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/core/utils/constants.dart';
import 'package:drogovat/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/widgets/drug_image_container.dart';

class DrugDescriptionView extends StatelessWidget {
  const DrugDescriptionView({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: darkBlueColor,
              size: 30,
            ),
          ),
          title: Text(
            'Drug Description',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Column(
                children: [
                  DrugImageContainer(
                    width: 200,
                    height: 200,
                    bgColor: drugItemConColor,
                    imagePath: drugs[index].drugImage ?? '',
                  ),
                  SizedBox(height: 20),
                  Text(
                    drugs[index].drugName ?? '',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Description:\n',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: drugs[index].drugDesc,
                            style: Styles.textStyle20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Doses:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    buildDoseContainer(
                      label: 'Loading',
                      dose: '${drugs[index].drugLoadingDose}',
                    ),
                    SizedBox(height: 10),
                    buildDoseContainer(
                      label: 'Maintenance',
                      dose: '${drugs[index].drugMaintenanceDose}',
                    ),
                    SizedBox(height: 10),
                    buildDoseContainer(
                      label: 'Duration',
                      dose: '${drugs[index].drugActiveDuration}',
                    ),
                    SizedBox(height: 10),
                    buildDoseContainer(
                      label: 'Full Amount',
                      dose: '${drugs[index].drugFullAmount}',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDoseContainer({
    required String label,
    required String dose,
  }) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Styles.textStyle20,
          ),
          Text(
            dose,
            style: Styles.textStyle20,
          ),
        ],
      ),
    );
  }
}
