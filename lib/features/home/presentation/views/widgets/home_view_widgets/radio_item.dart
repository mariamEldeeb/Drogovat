import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:drogovat/features/home/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/colors.dart';

class BuildRadioItem extends StatelessWidget {
  const BuildRadioItem(
      {super.key, required this.radioText, required this.radioValue});

  final String radioText;
  final String radioValue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
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
              value: radioValue,
              groupValue: cubit.radioGroupValue,
              onChanged: (val) {
                cubit.changeRadioValue(val);
              },
            ),
            Text(
              radioText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: darkBlueColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        );
      },
    );
  }
}
