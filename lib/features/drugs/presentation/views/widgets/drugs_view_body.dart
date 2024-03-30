import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/core/widgets/search_container.dart';
import 'package:drogovat/features/drugs/presentation/views/widgets/drug_item.dart';
import 'package:drogovat/features/home/presentation/views/widgets/my_navigation_rail.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../data/models/drug_model.dart';

class DrugsViewBody extends StatelessWidget {
  const DrugsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MyNavigationRail(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 90,
              top: 25,
              // right: 50,
              // bottom: 20,
            ),
            child: Column(
              children: [
                const SearchContainer(),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 100,
                      mainAxisSpacing: 20,
                      // childAspectRatio: 3/3,
                    ),
                    itemBuilder: (context, index) {
                      return DrugItem(
                        index: index,
                      );
                    },
                    itemCount: drugs.length,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(right: 20,bottom: 15),
            decoration: ShapeDecoration(
              shape: OvalBorder(),
              color: darkBlueColor,
              // gradient: LinearGradient(
              //   begin: Alignment(0.00, -1.00),
              //   end: Alignment(0, 1),
              //   colors: [
              //     Color(0xFF0E6ABF),
              //     Color(0xFF0E6ABF),
              //     Color(0xFF37C3CC)
              //   ],
              // ),
            ),
            child: Center(
              child: Image.asset(
                addDrugIcon,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
