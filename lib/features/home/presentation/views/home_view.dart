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
            const SizedBox(
              height: 20,
            ),
            CustomFilledButton(
              text: 'Next',
              width: 178,
              height: 52,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
