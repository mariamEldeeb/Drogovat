import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

SnackbarController showSnackBar({String? title, text}) {
  return Get.snackbar(
    title ?? '',
    text,
    duration: const Duration(seconds: 3),
    snackPosition: SnackPosition.BOTTOM,
    borderRadius: 30,
    backgroundColor: darkBlueColor.withOpacity(0.5),
    margin: const EdgeInsets.only(bottom: 40),
    titleText: title!.isNotEmpty
        ? Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1,
            ),
            textAlign: TextAlign.center,
          )
        : SizedBox(),
    messageText: Center(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          height: 1,
          color: Colors.white,
        ),
      ),
    ),
    maxWidth: 300,
    dismissDirection: DismissDirection.horizontal,
  );
}
