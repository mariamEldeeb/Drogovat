import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: HomeViewBody(),
      ),
    );
  }
}
