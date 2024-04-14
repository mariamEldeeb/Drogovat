import 'package:drogovat/features/init_page/presentation/manager/init_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/assets.dart';
import '../../../drugs/presentation/views/drugs_view.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../settings/presentation/views/settings_view.dart';
import '../../data/nav_rail_icons_data.dart';

class InitPageCubit extends Cubit<InitPageStates> {
  InitPageCubit() : super(InitPageInitialState());

  static InitPageCubit get(context) => BlocProvider.of(context);

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

  List<Widget> screens = [
    HomeView(),
    DrugsView(),
    SettingsView(),
  ];

  int selectedIndex = 0;
  changeIndex(int index) {
    selectedIndex = index;
    print(selectedIndex);
    emit(ChangePageIndexState());
  }
}