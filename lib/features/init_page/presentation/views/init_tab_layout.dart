import 'package:drogovat/features/init_page/presentation/views/tab_widgets/my_navigation_rail.dart';
import 'package:flutter/material.dart';

import '../manager/init_page_cubit.dart';

class InitPageTabLayout extends StatelessWidget {
  const InitPageTabLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = InitPageCubit.get(context);

    return Scaffold(
      body: Row(
        children: [
          const MyNavigationRail(),
          const SizedBox(width: 20),
          Expanded(child: cubit.screens[cubit.selectedIndex]),
        ],
      ),
    );
  }
}
