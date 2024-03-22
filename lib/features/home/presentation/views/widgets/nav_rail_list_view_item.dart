import 'package:drogovat/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../manager/home_cubit.dart';

class NavRailListViewItem extends StatelessWidget {
  const NavRailListViewItem({
    super.key,
    required this.cubit,
    required this.index,
    this.onTap,
    required this.isSelected,
  });

  final HomeCubit cubit;
  final int index;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            isSelected ? cubit.navIcons[index].whiteIcon : cubit.navIcons[index].icon,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 9,
          ),
          isSelected
              ? Container(
                  height: 5,
                  width: 35,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
          const SizedBox(height: 3),
          Text(
            cubit.navIcons[index].text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
