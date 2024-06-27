import 'package:drogovat/features/monitor/presentation/views/tab_widgets/monitor_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class TabMonitorLayout extends StatelessWidget {
  const TabMonitorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: monitorBgColor,
      body: MonitorViewBody(),
    );
  }
}
