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
        BuildRadioItem(radioText: ques[index].radio1!, radioValue: ques[index].radio1!,),
        BuildRadioItem(radioText: ques[index].radio2!, radioValue: ques[index].radio2!,),
      ],
    );
  }
}
