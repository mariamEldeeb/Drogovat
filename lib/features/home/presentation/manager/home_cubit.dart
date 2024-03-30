import 'package:drogovat/core/functions/navigate.dart';
import 'package:drogovat/core/utils/assets.dart';
import 'package:drogovat/features/drugs/presentation/views/drugs_view.dart';
import 'package:drogovat/features/home/data/nav_rail_icons_data.dart';
import 'package:drogovat/features/home/presentation/views/home_view.dart';
import 'package:drogovat/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<NavIcon> navIcons = [
    NavIcon(
      icon: homeIcon,
      whiteIcon: whiteHomeIcon,
      text: 'Home',
    ),
    NavIcon(
      icon: drugIcon,
      whiteIcon: whiteDrugIcon,
      text: 'Drugs',
    ),
    NavIcon(
      icon: settingsIcon,
      whiteIcon: whiteSettingsIcon,
      text: 'Settings',
    ),
  ];

  int selectedIndex = 0;

  List<Widget> screens = [
    HomeView(),
    DrugsView(),
    SettingsView(),
  ];
  changeIndex(int index) {
    selectedIndex = index;
    print(selectedIndex);
    navigateTo(screens[selectedIndex]);
    emit(ChangeIndexState());
  }

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
}