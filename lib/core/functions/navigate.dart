import 'package:flutter/material.dart';
import 'package:get/get.dart';

navigateTo(Widget Function() page) {
  Get.to(
    page,
    duration: const Duration(milliseconds: 300),
    transition: Transition.fade,
  );
}

navigateOffTo(Widget Function() page) {
  Get.off(
    page,
    duration: const Duration(milliseconds: 300),
    transition: Transition.fade,
  );
}

navigateOffAllTo(Widget Function() page) {
  Get.offAll(
    page,
    duration: const Duration(milliseconds: 300),
    transition: Transition.fade,
  );
}
