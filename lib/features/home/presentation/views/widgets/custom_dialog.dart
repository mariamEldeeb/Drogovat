import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Color(0xffD9D9D9),
      child: buildDialogChild(context, w, h),
    );
  }

  buildDialogChild(BuildContext context, width, height) {
    return Container(
      width: 1000,
      height: 600,
      child: Column(
        children: [
          Text('lnsdlnkls'),
          Text('lnsdlnkls'),
          Text('lnsdlnkls'),
          Text('lnsdlnkls'),
        ],
      ),
    );
  }
}
