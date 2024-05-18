import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/build_drug_dialog.dart';
import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/confirm_item.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../../core/widgets/custom_filled_btn.dart';
import '../../../../../../core/widgets/custom_outline_btn.dart';

buildConfirmDialog(BuildContext context) {
  var cubit = HomeCubit.get(context);

  return Container(
    width: 600,
    height: 490,
    padding: const EdgeInsets.only(left: 60, bottom: 25, right: 55, top: 15),
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ConfirmItem(
            label: 'Name',
            outputText: cubit.nameController.text,
          ),
          ConfirmItem(
            label: 'Height',
            outputText: cubit.heightController.text,
          ),
          ConfirmItem(
            label: 'Weight',
            outputText: cubit.weightController.text,
          ),
          ConfirmItem(
            label: 'Age',
            outputText: cubit.ageController.text,
          ),
          ConfirmItem(
            label: 'Gender',
            outputText: cubit.selectedGender ?? '',
          ),
          ConfirmItem(
            label: 'Heart State',
            outputText: cubit.selectedHeartState ?? '',
          ),
          ConfirmItem(
            label: 'Hypertension',
            outputText: cubit.selectedHypertension ?? '',
          ),
          ConfirmItem(
            label: 'Diabetes',
            outputText: cubit.selectedDiabetes ?? '',
          ),
          ConfirmItem(
            label: 'Full  /  Half',
            outputText: cubit.selectedOpType ?? '',
          ),
          ConfirmItem(
            label: 'Period of operation',
            outputText: cubit.opDuration,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomOutlineButton(
                text: 'Back',
                onTap: () {
                  return Navigator.pop(context);
                },
              ),
              CustomFilledButton(
                width: 112,
                height: 42,
                text: 'Confirm',
                textColor: Colors.white,
                onTap: () {
                  showCustomDialog(
                    context: context,
                    child: buildDrugDialog(context),
                    barrierColor: dialogBarrierColor,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
