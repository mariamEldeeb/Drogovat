import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../utils/colors.dart';

class CustomMobileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomMobileAppBar({
    super.key,
    required this.title,
    required this.isBack,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  final String title;
  final bool isBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: isBack
          ? IconButton(
              onPressed: () {
                Get.back();
              },
              iconSize: 40,
              icon: Icon(IconlyLight.arrow_left),
              color: darkBlueColor,
            )
          : SizedBox(),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 25,
          color: darkBlueColor,
        ),
      ),
    );
  }
}
