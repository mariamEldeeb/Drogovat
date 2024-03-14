import 'package:drogovat/features/home/presentation/views/widgets/my_navigation_rail.dart';
import 'package:drogovat/features/home/presentation/views/widgets/ques_list_view.dart';
import 'package:flutter/material.dart';

import 'large_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MyNavigationRail(),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 23,bottom: 29),
              child: Column(
                children: [
                  QuesListView(),
                  SizedBox(height: 20,),
                  LargeButton(text: 'Next',),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
