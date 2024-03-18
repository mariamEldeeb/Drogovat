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
