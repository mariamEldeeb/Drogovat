import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  String selectedMeasureUnit = '';

  void changeMeasureUnit(String value) {
    selectedMeasureUnit = value;
    print(selectedMeasureUnit);
    emit(ChangeMeasureUnitState());
  }

  Map<String, TextEditingController> controllers = {
    'height': TextEditingController(),
    'weight': TextEditingController(),
    'age': TextEditingController(),
    'periodOfOperation': TextEditingController(),
  };

  List<TextEditingController> controller = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  String? radioGroupValue = '';
  void changeRadioValue(String? newValue){
    radioGroupValue = newValue;
    print(radioGroupValue);
    emit(ChangeRadioValueState());
  }
}