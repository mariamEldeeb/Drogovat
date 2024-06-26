import 'package:flutter/material.dart';

class DeviceInfo {
  static late bool isTablet;
  static late Size screenSize;

  static void initialize(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    isTablet = screenSize.width >= 600;
  }
}
