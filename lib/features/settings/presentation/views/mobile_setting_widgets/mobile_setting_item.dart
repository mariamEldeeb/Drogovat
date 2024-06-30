import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class MobileSettingItem extends StatelessWidget {
  const MobileSettingItem({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  final String text;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Icon(
              icon,
              color: darkBlueColor,
              size: 35,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(fontSize: 23),
            ),
          ],
        ),
      ),
    );
  }
}
