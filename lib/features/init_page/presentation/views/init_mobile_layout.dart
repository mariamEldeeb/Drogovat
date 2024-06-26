import 'package:flutter/material.dart';

import '../manager/init_page_cubit.dart';
import 'mobile_widgets/mobile_nav_bar.dart';

class InitPageMobileLayout extends StatelessWidget {
  const InitPageMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = InitPageCubit.get(context);

    return Scaffold(
      body: cubit.screens[cubit.selectedIndex],
      bottomNavigationBar: CustomMobileNavBar(),
    );
  }
}
