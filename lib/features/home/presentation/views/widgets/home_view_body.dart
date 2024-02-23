import 'package:drogovat/features/home/presentation/views/widgets/my_navigation_rail.dart';
import 'package:drogovat/features/home/presentation/views/widgets/ques_list_view.dart';
import 'package:flutter/material.dart';

import 'large_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MyNavigationRail(),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 29),
              child: Column(
                children: [
                  QuesListView(),
                  const SizedBox(height: 20,),
                  const LargeButton(text: 'Next',),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
