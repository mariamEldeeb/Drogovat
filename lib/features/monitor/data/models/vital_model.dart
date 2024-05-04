import 'package:flutter/material.dart';

class VitalModel {
  final String vitalText;
  final String vitalValue;
  final Color vitalValueColor;

  VitalModel({
    required this.vitalText,
    required this.vitalValue,
    required this.vitalValueColor,
  });
}

List<VitalModel> vitals = [
  VitalModel(
    vitalText: 'Heart\nRate',
    vitalValue: '120 / 80',
    vitalValueColor: const Color(0xffFF2929),
  ),
  VitalModel(
    vitalText: 'Blood\npressure',
    vitalValue: '88 - 89',
    vitalValueColor: const Color(0xffFF4BED),
  ),
  VitalModel(
    vitalText: 'Respiratory\nRate',
    vitalValue: '12 - 20',
    vitalValueColor: const Color(0xff77FFFF),
  ),
  VitalModel(
    vitalText: 'Oxygen\nSaturation',
    vitalValue: '94 %',
    vitalValueColor: const Color(0xff3894FF),
  ),
  VitalModel(
    vitalText: 'End-Tidal\nCarbon',
    vitalValue: '35',
    vitalValueColor: const Color(0xffFFE869),
  ),
  VitalModel(
    vitalText: 'Temperature',
    vitalValue: '37',
    vitalValueColor: const Color(0xff5DFF4E),
  ),
  VitalModel(
    vitalText: 'Electrocardiogram',
    vitalValue: '75',
    vitalValueColor: const Color(0xffFF9549),
  ),
];
