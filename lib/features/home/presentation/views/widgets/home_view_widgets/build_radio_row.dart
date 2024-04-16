import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/radio_item.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/question_model.dart';

class MyRadioRow extends StatelessWidget {
  const MyRadioRow({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildRadioItem(radioText: inputs[index].radio1!, radioValue: inputs[index].radio1!,),
        BuildRadioItem(radioText: inputs[index].radio2!, radioValue: inputs[index].radio2!,),
      ],
    );
  }
}
