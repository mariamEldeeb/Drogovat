import 'package:drogovat/device_info.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:drogovat/features/home/presentation/manager/home_state.dart';
import 'package:drogovat/features/home/presentation/views/mobile_home_layout.dart';
import 'package:drogovat/features/home/presentation/views/tab_home_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return DeviceInfo.isTablet ? HomeTabLayout() : HomeMobileLayout();
      },
    );
  }
}
