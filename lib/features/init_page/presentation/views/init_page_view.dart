import 'package:drogovat/features/init_page/presentation/manager/init_page_cubit.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_state.dart';
import 'package:drogovat/features/init_page/presentation/views/mobile_layout.dart';
import 'package:drogovat/features/init_page/presentation/views/tab_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../device_info.dart';

class InitPageView extends StatelessWidget {
  const InitPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<InitPageCubit, InitPageStates>(
        builder: (context, state) {
          return DeviceInfo.isTablet
              ? InitPageTabLayout()
              : InitPageMobileLayout();
        },
      ),
    );
  }
}
