import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomMobileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomMobileAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
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
