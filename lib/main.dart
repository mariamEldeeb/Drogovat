import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_cubit.dart';
import 'package:drogovat/features/init_page/presentation/views/init_page_view.dart';
import 'package:drogovat/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'core/bloc_observer.dart';
import 'core/utils/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        BlocProvider(create: (context) => InitPageCubit()..getAllDrugs()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: darkBlueColor)
              .copyWith(background: backgroundColor),
          fontFamily: 'Imprima',
        ),
        initialRoute: '/',
        getPages: pages,
        home: const InitPageView(),
      ),
    );
  }
}
