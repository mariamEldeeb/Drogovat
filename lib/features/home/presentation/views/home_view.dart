import 'package:drogovat/core/functions/show_custom_dialog.dart';
import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/build_confirm_dialog.dart';
import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/ques_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_filled_btn.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 23, bottom: 29),
        child: Column(
          children: [
            const QuesListView(),
            const SizedBox(height: 20),
            CustomFilledButton(
              text: 'Next',
              width: 178,
              height: 52,
              textColor: Colors.white,
              onTap: () {
                showCustomDialog(
                  context: context,
                  barrierColor: Color(0xff7E7D7D).withOpacity(0.7),
                  child: buildConfirmDialog(context),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
