import 'package:drogovat/features/monitor/presentation/manager/monitor_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
}
