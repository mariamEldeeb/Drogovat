import 'package:drogovat/core/utils/constants.dart';
import 'package:drogovat/core/widgets/drug_image_container.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/functions/navigate.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/widgets/custom_filled_btn.dart';
import '../../final_revision_view.dart';

buildDrugDialog(BuildContext context) {
  return Container(
    width: 700,
    height: 353,
    padding: const EdgeInsets.only(top: 38, left: 30, bottom: 33, right: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrugImageContainer(
              bgColor: drugItemConColor,
              imagePath: '${drugs[2].drugImage}',
              width: 197,
              height: 200,
            ),
            SizedBox(width: 44),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Suitable Anesthesia Drug',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Add ',
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        TextSpan(
                            text: '${drugs[2].drugFullAmount}',
                            style: TextStyle(
                                color: Color(0xffA80707),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: ' ml of apparent anesthetic in the pump',
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 23),
        Row(
          children: [
            const Spacer(),
            CustomFilledButton(
              width: 120,
              height: 44,
              text: 'DONE',
              textColor: greenTextOnButtonColor,
              onTap: () {
                HomeCubit.get(context).createPatient(
                  pId: HomeCubit.get(context).patients.length + 1,
                  patientName: HomeCubit.get(context).nameController.text,
                  patientStatus: 'Active',
                  height: HomeCubit.get(context).heightController.text,
                  weight: HomeCubit.get(context).weightController.text,
                  age: HomeCubit.get(context).ageController.text,
                  gender: HomeCubit.get(context).selectedGender ?? '',
                  heartState: HomeCubit.get(context).selectedHeartState ?? '',
                  hypertension:
                      HomeCubit.get(context).selectedHypertension ?? '',
                  diabetes: HomeCubit.get(context).selectedDiabetes ?? '',
                  periodOfOp: HomeCubit.get(context).opDuration,
                  drugId: 'drug3',
                  temp: '',
                  endTidalCarbon: '',
                  rasRate: '',
                  heartRate: '',
                  bloodPressure: '',
                  electrocardiogram: '',
                  oxSaturation: '',
                  opName: HomeCubit.get(context).opNameController.text,
                );
                navigateTo(() => FinalRevisionView());
              },
            ),
          ],
        ),
      ],
    ),
  );
}
