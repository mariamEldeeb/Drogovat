import 'package:drogovat/features/monitor/presentation/manager/monitor_cubit.dart';
import 'package:drogovat/features/monitor/presentation/manager/monitor_states.dart';
import 'package:drogovat/features/monitor/presentation/views/tab_widgets/vital_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/colors.dart';

class TabVitalSignContainer extends StatelessWidget {
  const TabVitalSignContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MonitorCubit, MonitorStates>(
      builder: (context, state) {
        var cubit = MonitorCubit.get(context);
        return Container(
          padding: const EdgeInsets.only(left: 15, right: 50, top: 15),
          width: MediaQuery.of(context).size.width,
          //745, //MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 1,
              color: MonitorContainersColor,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 330,
                height: 300,
                child: Column(
                  children: [
                    VitalListViewItem(
                      vitalText: 'Heart Rate',
                      vitalValue: cubit.heartRate,
                      color: Colors.red,
                    ),
                    SizedBox(height: 15),
                    VitalListViewItem(
                      vitalText: 'Blood Pressure',
                      vitalValue: cubit.bloodPressure,
                      color: Colors.pink,
                    ),
                    SizedBox(height: 15),
                    VitalListViewItem(
                      vitalText: 'Ras Rate',
                      vitalValue: cubit.rasRate,
                      color: Colors.cyan,
                    ),
                  ],
                ),
                // ListView.separated(
                //   itemCount: 3,
                //   itemBuilder: (context, index) {
                //     return VitalListViewItem(
                //       vitalText: vitals[index].vitalText,
                //       vitalValue: vitals[index].vitalValue,
                //       color: vitals[index].vitalValueColor,
                //       index: index,
                //     );
                //   },
                //   separatorBuilder: (context, index) {
                //     return const SizedBox(height: 15);
                //   },
                // ),
              ),
              SizedBox(
                width: 330,
                height: 250,
                child: Column(
                  children: [
                    VitalListViewItem(
                      vitalText: 'Oxygen Saturation',
                      vitalValue: '${cubit.oxSaturation} %',
                      color: Colors.red,
                    ),
                    VitalListViewItem(
                      vitalText: 'End-Tidal Carbon',
                      vitalValue: cubit.endTidalCarbon,
                      color: Colors.pink,
                    ),
                    VitalListViewItem(
                      vitalText: 'Temperature',
                      vitalValue: '${cubit.temp} °',
                      color: Colors.cyan,
                    ),
                    VitalListViewItem(
                      vitalText: 'Electrocardiogram',
                      vitalValue: cubit.electrocardiogram,
                      color: Colors.cyan,
                    ),
                  ],
                ),
                // ListView.builder(
                //   itemCount: 4,
                //   itemBuilder: (context, index) {
                //     return VitalListViewItem(
                //       vitalText: vitals[index + 3].vitalText,
                //       vitalValue: vitals[index + 3].vitalValue,
                //       color: vitals[index + 3].vitalValueColor,
                //     );
                //   },
                // ),
              ),
            ],
          ),
        );
      },
    );
  }
}
