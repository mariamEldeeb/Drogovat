import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/views/widgets/title_container.dart';
import 'package:flutter/material.dart';

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: smallContainerColor,
      width: 286,
      child: Column(
        children: [
          TitleContainer(
            width: 222,
            text: 'Patient Information',),
        ],
      ),
    );
  }
}
