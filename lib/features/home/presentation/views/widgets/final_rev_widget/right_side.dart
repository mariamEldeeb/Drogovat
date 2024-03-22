import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/views/widgets/final_rev_widget/title_container.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/question_model.dart';

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> output = [
      '160 cm',
      '60 kg',
      '21',
      'stable',
      'No',
      'No',
      'Full',
      '02 : 00 H',
    ];

    return Container(
      color: smallContainerColor,
      // width: 286,
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        children: [
          const TitleContainer(text: 'Patient Information', width: 222),
          const SizedBox(height: 30,),
          SizedBox(
            width: 260,
            child: Padding(
              padding: const EdgeInsets.only(left: 25,),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: inputs.length,
                itemBuilder: (context, index){
                  return Row(
                    children: [
                      SizedBox(
                        width: 135,
                        child: Text(
                          inputs[index].inputText,
                          style: const TextStyle(
                            color: Color(0xff424242),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Text(
                        output[index],
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index){
                  return const SizedBox(height: 25);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}