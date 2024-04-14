import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/build_drug_dialog.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/functions/show_custom_dialog.dart';
import '../../../../data/models/question_model.dart';
import '../../../../../../core/widgets/custom_filled_btn.dart';
import '../../../../../../core/widgets/custom_outline_btn.dart';
import '../dialog_list_view_item.dart';

buildConfirmDialog(BuildContext context) {
  return Container(
    width: 600,
    height: 490,
    padding: const EdgeInsets.only(
      left: 60,
      bottom: 25,
      right: 55,
    ),
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return DialogListViewItem(
                  index: index,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              itemCount: inputs.length,
            ),
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
                    child: buildDrugDialog(),
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