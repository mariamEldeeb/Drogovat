import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/views/widgets/my_navigation_rail.dart';
import 'package:drogovat/features/home/presentation/views/widgets/ques_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../core/widgets/large_button.dart';
import 'build_confirm_dialog.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MyNavigationRail(),
        const SizedBox(width: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 23, bottom: 29),
              child: Column(
                children: [
                  const QuesListView(),
                  const SizedBox(
                    height: 20,
                  ),
                  LargeButton(
                    text: 'Next',
                    color: gradiantGreenColor,
                    onTap: () {
                      showCustomDialog(context: context, child: buildConfirmDialog(context));
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
