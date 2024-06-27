import 'package:drogovat/device_info.dart';
import 'package:drogovat/features/drugs/presentation/views/mobile_drug_layout.dart';
import 'package:drogovat/features/drugs/presentation/views/tab_drug_layout.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_cubit.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrugsView extends StatelessWidget {
  const DrugsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InitPageCubit, InitPageStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return DeviceInfo.isTablet ? TabDrugLayout() : MobileDrugLayout();
      },
    );
  }
}
