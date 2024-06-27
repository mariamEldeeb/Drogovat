import 'package:drogovat/features/monitor/presentation/views/monitor_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/functions/navigate.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/custom_filled_btn.dart';
import '../../../../../core/widgets/drug_image_container.dart';
import '../../manager/home_cubit.dart';

class MobileDrugDialog extends StatelessWidget {
  const MobileDrugDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 0.5,
      height: 550,
      padding: const EdgeInsets.only(left: 15, bottom: 25, right: 15, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Suitable Anesthesia Drug',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 23),
          DrugImageContainer(
            bgColor: drugItemConColor,
            imagePath: '${drugs[1].drugImage}',
            width: 190,
            height: 180,
          ),
          const SizedBox(height: 30),
          Text.rich(
            textAlign: TextAlign.center,
            style: TextStyle(height: 1.5, fontSize: 20),
            TextSpan(
              children: [
                TextSpan(
                  text: 'Add ',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                    text: '${drugs[2].drugFullAmount}',
                    style: TextStyle(
                        color: Color(0xffA80707), fontWeight: FontWeight.bold)),
                TextSpan(
                    text: ' ml of apparent anesthetic in the pump',
                    style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "After putting the drug in the solution press 'Done'\nto start the Operation",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: CustomFilledButton(
              width: 120,
              height: 44,
              text: 'DONE',
              textColor: greenTextOnButtonColor,
              onTap: () {
                HomeCubit.get(context).createPatient(
                  pId: HomeCubit.get(context).patients.length + 1,
                  patientName: HomeCubit.get(context).nameController.text,
                  height: HomeCubit.get(context).heightController.text,
                  weight: HomeCubit.get(context).weightController.text,
                  age: HomeCubit.get(context).ageController.text,
                  gender: HomeCubit.get(context).selectedGender ?? '',
                  heartState: HomeCubit.get(context).selectedHeartState ?? '',
                  hypertension:
                      HomeCubit.get(context).selectedHypertension ?? '',
                  diabetes: HomeCubit.get(context).selectedDiabetes ?? '',
                  typeOfOp: HomeCubit.get(context).selectedOpType ?? '',
                  periodOfOp: HomeCubit.get(context).opDuration,
                  drugId: 'drug3',
                  temp: '',
                  endTidalCarbon: '',
                  rasRate: '',
                  heartRate: '',
                  bloodPressure: '',
                  electrocardiogram: '',
                  oxSaturation: '',
                );
                navigateTo(const MonitorView());
              },
            ),
          ),
        ],
      ),
    );
  }
}
