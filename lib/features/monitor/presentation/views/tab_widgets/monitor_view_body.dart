import 'package:drogovat/features/monitor/presentation/views/tab_widgets/time_container.dart';
import 'package:drogovat/features/monitor/presentation/views/tab_widgets/vital_sign_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dose_info_container.dart';

class MonitorViewBody extends StatelessWidget {
  const MonitorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15, right: 11, top: 15, bottom: 15),
      child: Column(
        children: [
          TabTimeContainer(),
          SizedBox(height: 10),
          TabVitalSignContainer(),
          SizedBox(height: 10),
          TabDoseInfoContainer(),
        ],
      ),
    );
  }
}
