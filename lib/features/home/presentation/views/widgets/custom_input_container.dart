import 'package:drogovat/features/home/data/models/question_model.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:drogovat/features/home/presentation/manager/home_state.dart';
import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/build_radio_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/colors.dart';
import 'custom_text_form_field.dart';
import 'home_view_widgets/measure_unit.dart';

class CustomInputContainer extends StatelessWidget {
  CustomInputContainer({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      width: w / 1.4,
      height: h / 11,
      decoration: BoxDecoration(
        color: textFormFiledColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ques[index].isRadio == true
          ? MyRadioRow(index: index)
          : Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    hintText: ques[index].hintText,
                  ),
                ),
                if (ques[index].isHeight != null)
                  const MeasureUnit(
                    measureUnitText: ['cm', 'inches', 'feet'],
                    index: 0,
                  )
                else if (ques[index].isWeight != null)
                  const MeasureUnit(
                    measureUnitText: ['kg', 'pound'],
                    index: 1,
                  )
                else
                  const SizedBox(),
                const SizedBox(width: 35),
              ],
            ),
    );
  }
}
