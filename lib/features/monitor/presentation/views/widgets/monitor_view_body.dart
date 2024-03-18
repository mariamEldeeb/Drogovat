import 'package:drogovat/features/monitor/presentation/views/widgets/dose_info_container.dart';
import 'package:drogovat/features/monitor/presentation/views/widgets/time_container.dart';
import 'package:drogovat/features/monitor/presentation/views/widgets/vital_sign_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonitorViewBody extends StatelessWidget {
  const MonitorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          TimeContainer(),
          SizedBox(height: 10),
          VitalSignContainer(),
          SizedBox(height: 10),
          DoseInfoContainer(),
        ],
      ),
    );
  }
}
