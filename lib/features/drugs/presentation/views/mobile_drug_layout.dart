import 'package:drogovat/core/utils/colors.dart';
import 'package:drogovat/core/utils/constants.dart';
import 'package:drogovat/core/widgets/custom_mobile_app_bar.dart';
import 'package:drogovat/features/drugs/presentation/views/mobile_widgets/drugs_list_view_item.dart';
import 'package:flutter/material.dart';

class MobileDrugLayout extends StatelessWidget {
  const MobileDrugLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomMobileAppBar(title: 'Drugs List', isBack: false),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 31, right: 31, top: 40, bottom: 20),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: drugs.length,
          itemBuilder: (context, index) {
            return DrugsListViewItem(
              index: index,
            );
          },
          separatorBuilder: (context, index0) {
            return const SizedBox(height: 35);
          },
        ),
      ),
    );
  }
}
