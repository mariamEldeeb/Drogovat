import 'package:drogovat/core/functions/show_sncak_bar.dart';
import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/core/widgets/custom_filled_btn.dart';
import 'package:drogovat/features/settings/presentation/views/mobile_setting_widgets/mobile_contact_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class MobileContactUs extends StatefulWidget {
  const MobileContactUs({super.key});

  @override
  State<MobileContactUs> createState() => _MobileContactUsState();
}

class _MobileContactUsState extends State<MobileContactUs> {
  TextEditingController contactNameController = TextEditingController();
  TextEditingController contactEmailController = TextEditingController();
  TextEditingController contactMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
            child: Column(
              children: [
                Image.asset(darkLogo),
                SizedBox(height: 30),
                MobileContactItem(
                  label: 'Name',
                  maxLines: 1,
                  controller: contactNameController,
                ),
                SizedBox(height: 20),
                MobileContactItem(
                  label: 'Email',
                  maxLines: 1,
                  controller: contactEmailController,
                ),
                SizedBox(height: 20),
                MobileContactItem(
                  label: 'Enter Your Message',
                  maxLines: 5,
                  controller: contactMessageController,
                ),
                SizedBox(height: 30),
                CustomFilledButton(
                  text: 'Send Message',
                  width: 230,
                  height: 70,
                  textColor: Colors.white,
                  onTap: () {
                    showSnackBar(
                      title: 'Message sent',
                      text: 'We will answer as soon as possible',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    contactNameController.dispose();
    contactEmailController.dispose();
    contactMessageController.dispose();
    super.dispose();
  }
}
