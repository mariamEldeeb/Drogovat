import 'package:drogovat/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_mobile_app_bar.dart';

class MobileAboutUs extends StatelessWidget {
  const MobileAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomMobileAppBar(
          title: 'About Us',
          isBack: true,
        ),
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
          child: Column(
            children: [
              Image.asset(darkLogo),
              SizedBox(height: 30),
              SingleChildScrollView(
                child: Expanded(
                  child: Text(
                    'It is an application that\nperforms the anesthesia process\nin an automatic manner by\n'
                    'entering the patient\'s data. The AI determines the appropriate\ntype of anesthetic and the\n'
                    'first dose. Then, as soon as you press start the process and the doses begin to be pumped in a calculated\n'
                    'periodic manner throughout the operation period',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, height: 2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
