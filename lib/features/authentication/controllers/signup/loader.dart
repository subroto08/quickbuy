import 'package:QuickBuy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class SLoader {
  static hideSnackBar() => ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(
          elevation: 0,
          duration: Duration(seconds: 3),
          backgroundColor: Colors.transparent,
          content: Container(
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: SHelperFunctions.isDarkMode(Get.context!) ? SColors.darkerGrey.withOpacity(0.9) : SColors.grey.withOpacity(0.9),
            ),
            child: Center(child: Text(message, style: Theme.of(Get.context!).textTheme.labelLarge)),
          ),
        ),
    );
  }

  static sucessSnackBar({required title,message='',duration = 3}) {
    Get.snackbar(
    title,
    message,
    isDismissible: true,
    shouldIconPulse: true,
colorText: Colors.white,
backgroundColor: SColors.primary,
snackPosition: SnackPosition.BOTTOM,
duration: Duration(seconds: duration),
margin: EdgeInsets.all(10),
icon: Icon(Iconsax.check, color: SColors.white,)
    );
}

static warningSnackBar({required title,message=''}) {
    Get.snackbar(
    title,
    message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
      margin: EdgeInsets.all(20),
        icon: Icon(Iconsax.warning_2, color: SColors.white,)
    );
}

static errorSnackBar({required title,message=''}){
Get.snackbar(
title,
message,
isDismissible: true,
shouldIconPulse: true,
colorText: Colors.white,
backgroundColor: Colors.red.shade600,
snackPosition: SnackPosition.BOTTOM,
duration: Duration(seconds: 3),
margin: EdgeInsets.all(20),
icon: Icon(Iconsax.warning_2, color: SColors.white,),
);
}
}
