import 'package:drogovat/features/monitor/presentation/manager/monitor_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MonitorCubit extends Cubit<MonitorStates> {
  MonitorCubit() : super(MonitorInitialState());

  static MonitorCubit get(context) => BlocProvider.of(context);

  String heartRate = '120 / 80';
  String bloodPressure = '88 - 89';
  String rasRate = '12 - 20';
  String oxSaturation = '94';
  String endTidalCarbon = '35';
  String temp = '37';
  String electrocardiogram = '75';

  void saveVitalData() {}
}
