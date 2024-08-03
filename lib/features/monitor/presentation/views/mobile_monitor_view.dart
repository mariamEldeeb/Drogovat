import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/monitor/presentation/manager/monitor_cubit.dart';
import 'package:drogovat/features/monitor/presentation/manager/monitor_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'mobile_monitor_widgets/mobile_dose_container.dart';
import 'mobile_monitor_widgets/mobile_next_dose_container.dart';
import 'mobile_monitor_widgets/mobile_time_container.dart';
import 'mobile_monitor_widgets/mobile_vital_sign_container.dart';

class MobileMonitorLayout extends StatelessWidget {
  const MobileMonitorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MonitorCubit, MonitorStates>(
      builder: (context, state) {
        MonitorCubit.get(context);

        return Scaffold(
          backgroundColor: backgroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MobileTimeContainer(),
                  const SizedBox(height: 5),
                  MobileVitalSignContainer(),
                  const SizedBox(height: 5),
                  MobilePreviousDoseContainer(),
                  const SizedBox(height: 5),
                  MobileNextDoseContainer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
