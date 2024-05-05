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
      width: 227,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 15, bottom: 20),
      padding: const EdgeInsets.all(25),
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
          const SizedBox(height: 25),
          SizedBox(
            width: 260,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: ques.length,
              itemBuilder: (context, index){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 110,
                      child: Text(
                          ques[index].inputText,
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
                return const SizedBox(height: 20);
              },
            ),
          )
        ],
      ),
    );
  }
}