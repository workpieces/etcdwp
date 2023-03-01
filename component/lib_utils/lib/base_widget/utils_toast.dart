import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void showSnackbar(String title, String message,
    {Widget? icon, SnackPosition? position}) {
  Get.snackbar(
    title,
    message,
    icon: icon,
    snackPosition: position,
  );
}

void defaultDialog() {
  Get.defaultDialog();
}
