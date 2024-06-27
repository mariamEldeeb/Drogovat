import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_filled_btn.dart';
import '../../../../../core/widgets/custom_outline_btn.dart';
import 'mobile_confirm_item.dart';
import 'mobile_drug_dialog.dart';

class MobileConfirmDialog extends StatelessWidget {
  const MobileConfirmDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);

    return Container(
      width: MediaQuery.of(context).size.width / 0.5,
      height: 550,
      padding: const EdgeInsets.only(left: 15, bottom: 25, right: 15, top: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MobileConfirmItem(
              label: 'Name',
              outputText: cubit.nameController.text,
            ),
            MobileConfirmItem(
              label: 'Height',
              outputText: cubit.heightController.text,
            ),
            MobileConfirmItem(
              label: 'Weight',
              outputText: cubit.weightController.text,
            ),
            MobileConfirmItem(
              label: 'Age',
              outputText: cubit.ageController.text,
            ),
            MobileConfirmItem(
              label: 'Gender',
              outputText: cubit.selectedGender ?? '',
            ),
            MobileConfirmItem(
              label: 'Heart State',
              outputText: cubit.selectedHeartState ?? '',
            ),
            MobileConfirmItem(
              label: 'Hypertension',
              outputText: cubit.selectedHypertension ?? '',
            ),
            MobileConfirmItem(
              label: 'Diabetes',
              outputText: cubit.selectedDiabetes ?? '',
            ),
            MobileConfirmItem(
              label: 'Period of operation',
              outputText: cubit.opDuration,
            ),
            const SizedBox(height: 20),
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
                  height: 45,
                  text: 'Confirm',
                  textColor: Colors.white,
                  onTap: () {
                    showCustomDialog(
                      context: context,
                      child: MobileDrugDialog(),
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
}
