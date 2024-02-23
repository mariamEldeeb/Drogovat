import 'package:drogovat/features/home/presentation/views/widgets/my_navigation_rail.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyNavigationRail(),
        Column()
      ],
    );
  }
}
