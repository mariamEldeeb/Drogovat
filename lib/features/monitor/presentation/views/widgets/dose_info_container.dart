import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class DoseInfoContainer extends StatelessWidget {
  const DoseInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3.55,
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 2,
          color: const Color(0xFF0E6ABF),
        ),
      ),
    );
  }
}
