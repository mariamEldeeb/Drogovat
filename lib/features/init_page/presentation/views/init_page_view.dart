import 'package:drogovat/features/init_page/presentation/manager/init_page_cubit.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_state.dart';
import 'package:drogovat/features/init_page/presentation/views/widgets/my_navigation_rail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitPageView extends StatelessWidget {
  const InitPageView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = InitPageCubit.get(context);

    return SafeArea(
      child: BlocBuilder<InitPageCubit, InitPageStates>(
        builder: (context, state) {
          return Scaffold(
            body: Row(
              children: [
                const MyNavigationRail(),
                const SizedBox(width: 20),
                Expanded(child: cubit.screens[cubit.selectedIndex]),
              ],
            ),
          );
        },
      ),
    );
  }
}
