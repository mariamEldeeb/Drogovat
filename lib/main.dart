import 'package:drogovat/core/cache_helper.dart';
import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_cubit.dart';
import 'package:drogovat/features/monitor/presentation/manager/monitor_cubit.dart';
import 'package:drogovat/features/monitor/presentation/views/monitor_view.dart';
import 'package:drogovat/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'core/bloc_observer.dart';
import 'core/utils/routes.dart';
import 'device_info.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      DeviceInfo.initialize(context);
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => InitPageCubit()..getAllDrugs()),
          BlocProvider(create: (context) => HomeCubit()..getAllPatients()),
          BlocProvider(create: (context) => MonitorCubit()),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: darkBlueColor)
                .copyWith(surface: backgroundColor),
            fontFamily: 'Imprima',
            useMaterial3: false,
          ),
          initialRoute: '/',
          getPages: pages,
          home: const MonitorView(),
        ),
      );
    });
  }
}
