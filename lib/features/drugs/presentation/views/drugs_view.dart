import 'package:drogovat/features/drugs/presentation/views/widgets/drugs_view_body.dart';
import 'package:flutter/material.dart';

class DrugsView extends StatelessWidget {
  const DrugsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DrugsViewBody(),
      ),
    );
  }
}
