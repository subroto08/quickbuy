import 'package:QuickBuy/common/widgets/loader/animation_loader.dart';
import 'package:QuickBuy/utils/constants/colors.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';

class SFullScreenLoader{



  static void openLoadingDialog (String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
          canPop: false,
            child: Container(
              color:SHelperFunctions.isDarkMode(Get.context!) ? SColors.dark : SColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 250,),
                  SAnimationLoaderWidget(text: text, animation: animation,)
                ],
              ),
            )
        )
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}