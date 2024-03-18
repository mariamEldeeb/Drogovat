import 'package:drogovat/features/home/presentation/views/widgets/final_revision_view_body.dart';
import 'package:flutter/material.dart';

class FinalRevisionView extends StatelessWidget {
  const FinalRevisionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: FinalRevisionViewBody(),
      ),
    );
  }
}
