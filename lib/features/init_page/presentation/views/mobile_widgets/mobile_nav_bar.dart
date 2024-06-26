import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../manager/init_page_cubit.dart';

class CustomMobileNavBar extends StatelessWidget {
  const CustomMobileNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = InitPageCubit.get(context);

    return Container(
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: cubit.selectedIndex,
        iconSize: 35,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade800,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        onTap: (page) {
          cubit.changeIndex(page);
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(homeIconPng),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(drugIconPng),
            ),
            label: 'Drugs',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.setting,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
