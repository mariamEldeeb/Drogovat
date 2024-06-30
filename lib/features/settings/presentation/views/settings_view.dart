import 'package:drogovat/device_info.dart';
import 'package:drogovat/features/settings/presentation/views/mobile_setting_layout.dart';
import 'package:drogovat/features/settings/presentation/views/tab_setting_layout.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceInfo.isTablet ? TabSettingLayout() : MobileSettingLayout();
  }
}
