import 'package:drogovat/features/home/data/models/question_model.dart';
import 'package:drogovat/features/home/presentation/views/widgets/ques_list_view_item.dart';
import 'package:flutter/material.dart';

class QuesListView extends StatelessWidget {
  const QuesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return QuesListViewItem(
          quesText: inputs[index].inputText, index: index,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 15,
        );
      },
      itemCount: inputs.length,
    );
  }
}
