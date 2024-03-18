import 'package:drogovat/features/home/presentation/views/widgets/right_side.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'left_side.dart';
import 'my_navigation_rail.dart';

class FinalRevisionViewBody extends StatelessWidget {
  const FinalRevisionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MyNavigationRail(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 32),
            child: Row(
                children: [
                  LeftSide(),
                  RightSide(),
                ],
              ),
          ),
        ),
      ],
    );
  }
}
