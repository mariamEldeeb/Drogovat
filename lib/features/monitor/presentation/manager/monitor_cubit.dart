import 'package:drogovat/features/monitor/presentation/manager/monitor_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/show_custom_dialog.dart';
import '../views/mobile_monitor_widgets/custom_alert_dialog.dart';

class MonitorCubit extends Cubit<MonitorStates> {
  MonitorCubit() : super(MonitorInitialState());

  static MonitorCubit get(context) => BlocProvider.of(context);

  String heartRate = '60 / 85';
  String bloodPressure = '60 - 105';
  String rasRate = '30 - 50';
  String oxSaturation = '95';
  String endTidalCarbon = '45';
  String temp = '38';
  String electrocardiogram = '71';

  showAlertDialog({
    required BuildContext context,
  }) {
    if (heartRate == '80 / 80')
      showCustomDialog(
        context: context,
        barrierColor: Color(0xffFF0000).withOpacity(0.2),
        child: CustomAlertDialog(typeOfDanger: 'Heart error'),
      );
    emit(ShowAlertDialogSuccess());
  }
}
