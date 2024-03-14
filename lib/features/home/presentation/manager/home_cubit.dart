import 'package:drogovat/core/utils/assets.dart';
import 'package:drogovat/features/home/data/nav_rail_icons_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<NavIcon> navIcons = [
    NavIcon(icon: homeIcon, text: 'Home'),
    NavIcon(icon: drugIcon, text: 'Drugs'),
    NavIcon(icon: settingsIcon, text: 'Settings'),
  ];

  int selectedIndex = 0;
  changeIndex(int index) {
    selectedIndex = index;
    print(selectedIndex);
    emit(ChangeIndexState());
  }

  String selectedMeasureUnit = '';
  void changeMeasureUnit(String value){
    selectedMeasureUnit = value;
    print(selectedMeasureUnit);
    emit(ChangeMeasureUnitState());
  }
}
