import 'package:drogovat/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../../init_page/presentation/manager/init_page_cubit.dart';

class DrugItem extends StatelessWidget {
  const DrugItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = InitPageCubit.get(context);

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 30),
          width: 140,
          height: 155,
          decoration: BoxDecoration(
            color: drugItemConColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset(
                cubit.drugs[index].drugImage ?? '',
                height: 70,
                width: 70,
              ),
              Spacer(),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: darkBlueColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
                child: Center(
                  child: Text(
                    cubit.drugs[index].drugName ?? '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        //     ID
        Container(
          width: 53,
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Color(0xff0A0F22).withOpacity(0.5),
          ),
          child: Center(
            child: Text(
              cubit.drugs[index].drugId ?? '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
