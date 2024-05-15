import 'package:flutter/material.dart';


class BuildTitle extends StatelessWidget {
  const BuildTitle({super.key,});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Patient Info',
      style: const TextStyle(
        fontSize: 30,
      ),
    );
  }
}