import 'package:drogovat/features/drugs/presentation/views/widgets/drug_item.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_cubit.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/search_container.dart';

class DrugsView extends StatelessWidget {
  const DrugsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InitPageCubit, InitPageStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    const SearchContainer(),
                    const SizedBox(height: 30),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 20,
                        ),
                        itemBuilder: (context, index) {
                          return DrugItem(index: index);
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
                margin: EdgeInsets.only(right: 20, bottom: 15),
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: darkBlueColor,
                ),
                child: Center(
                  child: Image.asset(
                    addDrugIcon,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
