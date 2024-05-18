import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:drogovat/features/home/presentation/views/widgets/final_rev_widget/title_container.dart';
import 'package:flutter/material.dart';

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);

    return Container(
      width: 227,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 15, bottom: 20, right: 10),
      padding: const EdgeInsets.only(top: 25, bottom: 25, left: 20, right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x6D0A0F22),
            blurRadius: 3,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const BuildTitle(),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildInfoRow(
                    label: 'Height',
                    data: cubit.heightController.text,
                  ),
                  SizedBox(height: 10),
                  buildInfoRow(
                    label: 'Weight',
                    data: cubit.weightController.text,
                  ),
                  SizedBox(height: 10),
                  buildInfoRow(
                    label: 'Age',
                    data: cubit.ageController.text,
                  ),
                  SizedBox(height: 10),
                  buildInfoRow(
                    label: 'Gender',
                    data: '${cubit.selectedGender}',
                  ),
                  SizedBox(height: 10),
                  buildInfoRow(
                    label: 'Heart State',
                    data: '${cubit.selectedHeartState}',
                  ),
                  SizedBox(height: 10),
                  buildInfoRow(
                    label: 'Hypertension',
                    data: '${cubit.selectedHypertension}',
                  ),
                  SizedBox(height: 10),
                  buildInfoRow(
                    label: 'Diabetes',
                    data: '${cubit.selectedDiabetes}',
                  ),
                  SizedBox(height: 10),
                  buildInfoRow(
                    label: 'Full / Half',
                    data: '${cubit.selectedOpType}',
                  ),
                  SizedBox(height: 10),
                  buildInfoRow(
                    label: 'Period od operation',
                    data: cubit.opDuration,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildInfoRow({required String label, required String data}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 115,
          child: Text(
            label,
            style: TextStyle(
              color: labelTextColor,
              fontSize: 19.5,
            ),
          ),
        ),
        Text(
          data,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ],
    );
  }
}
