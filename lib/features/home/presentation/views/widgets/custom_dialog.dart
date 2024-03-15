import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/data/models/question_model.dart';
import 'package:drogovat/features/home/presentation/views/widgets/custom_btn.dart';
import 'package:drogovat/features/home/presentation/views/widgets/custom_outline_btn.dart';
import 'package:drogovat/features/home/presentation/views/widgets/dialog_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: textFormFiledColor,
      child: buildDialogChild(context, w, h),
    );
  }

  buildDialogChild(BuildContext context, width, height) {
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
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: inputs.length,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomOutlineButton(
                  text: 'Back',
                  onTap: () {
                    return Navigator.pop(context);
                  },
                ),
                const CustomButton(text: 'Confirm'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
