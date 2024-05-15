import 'package:flutter/material.dart';

import 'left_side.dart';
import 'right_side.dart';

class FinalRevisionViewBody extends StatelessWidget {
  const FinalRevisionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: LeftSide(),
          ),
          Expanded(
            flex: 1,
            child: RightSide(),
          ),
        ],
      ),
    );
  }
}
