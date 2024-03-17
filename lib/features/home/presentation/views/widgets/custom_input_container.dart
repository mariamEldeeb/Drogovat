import 'package:drogovat/features/home/data/models/question_model.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import 'custom_text_form_field.dart';
import 'measure_unit.dart';

class CustomInputContainer extends StatelessWidget{
  CustomInputContainer({super.key, required this.index});

  List<InputModel> inputList = List.from(inputs);
  int selectedValue = 0;
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
      child: inputList[index].isRadio == true
          ? buildRadio()
          : Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                      hintText: inputList[index].hintText,
                  ),
                ),
                if (inputList[index].isHeight != null)
                  const MeasureUnit(measureUnitText: ['cm', 'inches', 'feet'])
                else if (inputList[index].isWeight != null)
                  const MeasureUnit(measureUnitText: ['kg', 'pound'])
                else
                  const SizedBox(),
                const SizedBox(
                  width: 35,
                ),
              ],
            ),
    );
  }

  Widget buildRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildRadioItem(inputList[index].radio1!),
        buildRadioItem(inputList[index].radio2!)
      ],
    );
  }

  Widget buildRadioItem(String text) {
    return Row(
      children: [
        Radio(
          fillColor: MaterialStateColor.resolveWith(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.black;
              }
              return Colors.black45;
            },
          ),
          value: 1,
          groupValue: selectedValue,
          onChanged: (value) {

          },
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: darkBlueColor,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}