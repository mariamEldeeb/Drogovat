import 'package:flutter/material.dart';

import '../../../../home/presentation/views/tab_widgets/custom_text_form_field.dart';

class MobileContactItem extends StatelessWidget {
  const MobileContactItem({
    super.key,
    required this.label,
    this.maxLines,
    this.controller,
  });

  final String label;
  final int? maxLines;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            label,
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: CustomTextFormField(
            keyboardType: TextInputType.text,
            maxLines: maxLines,
            controller: controller,
          ),
        ),
      ],
    );
  }
}
