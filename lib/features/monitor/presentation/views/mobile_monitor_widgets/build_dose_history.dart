import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dose_history_list_view_item.dart';

class BuildDoseHistory extends StatelessWidget {
  const BuildDoseHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Previous Dose:',
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const DoseHistoryListViewItem();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 8);
            },
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
