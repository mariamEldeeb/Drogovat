import 'package:drogovat/core/assets.dart';
import 'package:drogovat/core/colors.dart';
import 'package:flutter/material.dart';

import 'navigation_rail_icon.dart';

class MyNavigationRail extends StatelessWidget {
  const MyNavigationRail({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Container(
      height: h,
      width: 75,
      padding: const EdgeInsets.all(10),
      color: darkBlueColor,
      child: const Column(
        children: [
          NavigationRailIcon(icon: homeIcon,text: 'Home',),
          SizedBox(height: 35,),
          NavigationRailIcon(icon: drugIcon,text: 'Drugs',),
          SizedBox(height: 35,),
          NavigationRailIcon(icon: settingsIcon,text: 'Settings',),
        ],
      ),
    );
  }
}
