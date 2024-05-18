import 'package:drogovat/features/home/presentation/views/widgets/final_rev_widget/left_side.dart';
import 'package:drogovat/features/home/presentation/views/widgets/final_rev_widget/right_side.dart';
import 'package:flutter/material.dart';

class FinalRevisionView extends StatelessWidget {
  const FinalRevisionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}
