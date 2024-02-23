import 'package:drogovat/features/home/data/models/question_model.dart';
import 'package:drogovat/features/home/presentation/views/widgets/ques_list_view_item.dart';
import 'package:flutter/material.dart';

class QuesListView extends StatelessWidget {
  QuesListView({super.key});

  List<QuestionModel> ques = List.from(questions);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return QuesListViewItem(
          quesText: ques[index].ques,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 15,
        );
      },
      itemCount: ques.length,
    );
  }
}
