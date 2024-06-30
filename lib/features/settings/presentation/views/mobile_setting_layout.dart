import 'package:drogovat/core/widgets/custom_mobile_app_bar.dart';
import 'package:drogovat/features/settings/presentation/views/mobile_setting_widgets/mobile_about_us.dart';
import 'package:drogovat/features/settings/presentation/views/mobile_setting_widgets/mobile_cotact_us.dart';
import 'package:drogovat/features/settings/presentation/views/mobile_setting_widgets/mobile_how_to_use.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/utils/colors.dart';
import 'mobile_setting_widgets/mobile_setting_item.dart';

class MobileSettingLayout extends StatelessWidget {
  const MobileSettingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomMobileAppBar(title: 'Settings'),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          children: [
            MobileSettingItem(
              icon: IconlyLight.info_circle,
              text: 'About Us',
              onTap: () {
                Get.to(
                  MobileAboutUs(),
                  transition: Transition.downToUp,
                  duration: Duration(milliseconds: 300),
                );
              },
            ),
            const SizedBox(height: 15),
            MobileSettingItem(
              icon: IconlyLight.call,
              text: 'Contact Us',
              onTap: () {
                Get.to(
                  MobileContactUs(),
                  transition: Transition.downToUp,
                  duration: Duration(milliseconds: 300),
                );
              },
            ),
            const SizedBox(height: 15),
            MobileSettingItem(
              icon: FontAwesomeIcons.lightbulb,
              text: 'How to use the app',
              onTap: () {
                Get.to(
                  MobileHowToUse(),
                  transition: Transition.downToUp,
                  duration: Duration(milliseconds: 300),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
