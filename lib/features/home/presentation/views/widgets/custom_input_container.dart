import 'package:drogovat/features/home/data/models/question_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import 'custom_text_form_field.dart';
import 'measure_unit.dart';

class CustomInputContainer extends StatefulWidget {
  const CustomInputContainer({super.key, required this.index});

  final int index;

  @override
  State<CustomInputContainer> createState() => _CustomInputContainerState();
}

class _CustomInputContainerState extends State<CustomInputContainer> {
  List<InputModel> inputList = List.from(inputs);
  int selectedValue = 0;

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
      child: inputList[widget.index].isRadio == true ? buildRadio() : Row(
        children: [
          Expanded(child: CustomTextFormField(hintText: inputList[widget.index].hintText)),
          inputList[widget.index].unitText != null ? MeasureUnit(text: inputList[widget.index].unitText) : const SizedBox(),
          const SizedBox(width: 35,),
        ],
      ),
    );
  }

  Widget buildRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildRadioItem(inputList[widget.index].radio1!),
        buildRadioItem(inputList[widget.index].radio2!)
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
            setState(() {
              selectedValue = value!;
            });
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