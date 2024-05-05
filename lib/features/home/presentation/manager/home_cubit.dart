import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  String selectedHeightUnit = '';

  void changeHeightUnit(String value) {
    selectedHeightUnit = value;
    print(selectedHeightUnit);
    emit(ChangeHeightUnitState());
  }

  String selectedWeightUnit = '';

  void changeWeightUnit(String value) {
    selectedWeightUnit = value;
    print(selectedWeightUnit);
    emit(ChangeWeightUnitState());
  }

  String? radioGroupValue = '';
  void changeRadioValue(String? newValue){
    radioGroupValue = newValue;
    print(radioGroupValue);
    emit(ChangeRadioValueState());
  }
}