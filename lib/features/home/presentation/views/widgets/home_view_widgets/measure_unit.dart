import 'package:drogovat/features/home/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../manager/home_cubit.dart';

class MeasureUnit extends StatelessWidget {
  const MeasureUnit({super.key, required this.measureUnitText});

  final List<String> measureUnitText;

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    cubit.selectedMeasureUnit = measureUnitText[0];

    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return PopupMenuButton(
          color: smallContainerColor,
          child: Container(
            width: 110,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: smallContainerColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  cubit.selectedMeasureUnit,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                ),
              ],
            ),
          ),
          itemBuilder: (context) {
            return List.generate(
              measureUnitText.length,
              (index) {
                return PopupMenuItem(
                  value: measureUnitText[index],
                  child: Text(
                    measureUnitText[index],
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            );
          },
          onSelected: (newValue) {
            cubit.changeMeasureUnit(newValue);
          },
        );
      },
    );
  }
}
