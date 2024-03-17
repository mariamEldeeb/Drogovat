import 'package:drogovat/core/utils/assets.dart';
import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/views/widgets/custom_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: textFormFiledColor,
      child: buildDrugDialog(),
    );
  }

  buildDrugDialog() {
    return Container(
      width: 700,
      height: 430,
      padding: const EdgeInsets.only(
        top: 30,
        left: 30,
        bottom: 25,
        right: 35,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Suitable Anesthesia Drug',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 13),
          Row(
            children: [
              Image.asset(drugImage),
              const SizedBox(width: 40),
              const Expanded(
                child: Text(
                  'Add 200 ml of apparent anesthetic in the pump',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 23),
          Row(
            children: [
              const Spacer(),
              CustomButton(
                text: 'DONE',
                textColor: greenTextOnButtonColor,
                onTap: (){

                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
