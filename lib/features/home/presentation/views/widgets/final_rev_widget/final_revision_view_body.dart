import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'left_side.dart';
import 'right_side.dart';
import '../my_navigation_rail.dart';

class FinalRevisionViewBody extends StatelessWidget {
  const FinalRevisionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyNavigationRail(),
        const Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: LeftSide(),
              ),
              Expanded(
                  flex: 1,
                  child: RightSide(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
