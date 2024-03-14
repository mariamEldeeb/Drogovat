import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'nav_rail_list_view_item.dart';

class MyNavigationRail extends StatefulWidget {
  const MyNavigationRail({super.key});

  @override
  State<MyNavigationRail> createState() => _MyNavigationRailState();
}

class _MyNavigationRailState extends State<MyNavigationRail> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    var cubit = HomeCubit.get(context);

    return Container(
      height: h,
      width: 75,
      padding: const EdgeInsets.all(10),
      color: darkBlueColor,
      child: ListView.separated(
        itemCount: cubit.navIcons.length,
        itemBuilder: (context, index) {
          return NavRailListViewItem(
            cubit: cubit,
            index: index,
            isSelected: cubit.selectedIndex == index,
            onTap: (){
              cubit.changeIndex(index);
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