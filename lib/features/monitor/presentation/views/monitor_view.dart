import 'package:drogovat/device_info.dart';
import 'package:drogovat/features/monitor/presentation/views/mobile_monitor_view.dart';
import 'package:drogovat/features/monitor/presentation/views/tab_monitor_layout.dart';
import 'package:flutter/material.dart';

class MonitorView extends StatelessWidget {
  const MonitorView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DeviceInfo.isTablet ? TabMonitorLayout() : MobileMonitorLayout(),
    );
  }
}
