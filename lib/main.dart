import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/drugs/presentation/views/drugs_view.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:drogovat/features/home/presentation/views/final_revision_view.dart';
import 'package:drogovat/features/monitor/presentation/views/monitor_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'core/bloc_observer.dart';
import 'core/utils/constants.dart';
import 'features/home/presentation/views/home_view.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
              .copyWith(background: backgroundColor),
          fontFamily: 'Imprima',
        ),
        initialRoute: '/',
        getPages: pages,
        home: const HomeView(),
      ),
    );
  }
}
