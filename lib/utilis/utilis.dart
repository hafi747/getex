import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:getx_mvvm/utilis/color/appcolors.dart';

class AppUtils {
  static void fieldFocusChange(
    BuildContext context,
    FocusNode current,
    FocusNode nextFocus,
  ) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastmessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Appcolors.blackColor,
      textColor: Appcolors.whiteColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static toastmessagecenter(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Appcolors.blackColor,
      textColor: Appcolors.whiteColor,
      gravity: ToastGravity.CENTER,
    );
  }

  static SnackBar(String title, String message) {
    Get.snackbar(title, message);
  }
}
