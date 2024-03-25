import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/monitor/presentation/views/widgets/monitor_view_body.dart';
import 'package:flutter/material.dart';

class MonitorView extends StatelessWidget {
  const MonitorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: monitorBgColor,
        body: MonitorViewBody(),
      ),
    );
  }
}