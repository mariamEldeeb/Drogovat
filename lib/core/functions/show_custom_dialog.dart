import 'package:flutter/material.dart';

import '../../features/home/presentation/views/tab_widgets/custom_dialog.dart';

Future<Object?> showCustomDialog({
  required BuildContext context,
  Widget? child,
  required Color barrierColor,
}) {
  return showGeneralDialog(
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierDismissible: false,
    barrierColor: barrierColor,
    context: context,
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return CustomDialog(
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
    transitionBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}
