import 'package:drogovat/core/colors.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(background: backgroundColor),
        fontFamily: 'Imprima',
      ),
      home: const HomeView(),
    );
  }
}
