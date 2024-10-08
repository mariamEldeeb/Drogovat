import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_cubit.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'nav_rail_list_view_item.dart';

class MyNavigationRail extends StatelessWidget {
  const MyNavigationRail({super.key});


  @override
  Widget build(BuildContext context) {

    double h = MediaQuery
        .of(context)
        .size
        .height;
    var cubit = InitPageCubit.get(context);

    return Container(
      height: h,
      width: 75,
      padding: const EdgeInsets.all(10),
      color: darkBlueColor,
      child: ListView.separated(
        itemCount: cubit.navIcons.length,
        itemBuilder: (context, index) {
          return BlocBuilder<InitPageCubit, InitPageStates>(
            builder: (context, state) {
              return NavRailListViewItem(
                cubit: cubit,
                index: index,
                isSelected: cubit.selectedIndex == index,
                onTap: () {
                  cubit.changeIndex(index);
                },
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 40,
          );
        },
      ),
    );
  }
}