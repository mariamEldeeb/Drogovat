import 'package:drogovat/features/monitor/presentation/views/widgets/dose_info_container.dart';
import 'package:drogovat/features/monitor/presentation/views/widgets/drug_container.dart';
import 'package:drogovat/features/monitor/presentation/views/widgets/edge_panel.dart';
import 'package:drogovat/features/monitor/presentation/views/widgets/time_container.dart';
import 'package:drogovat/features/monitor/presentation/views/widgets/vital_sign_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MonitorViewBody extends StatelessWidget {
  const MonitorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15, right: 11, top: 15, bottom: 15),
      child: Stack(
        children: [
          Row(
            children: [
              Column(
                children: [
                  TimeContainer(),
                  SizedBox(height: 10),
                  VitalSignContainer(),
                  SizedBox(height: 10),
                  DoseInfoContainer(),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              DrugContainer(),
            ],
          ),
          EdgePanel(),
        ],
      ),
    );
  }
}
