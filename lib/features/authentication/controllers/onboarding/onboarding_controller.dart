import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../screens/login/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  /// variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// update current index when page scroll
  void updatePageIndicator (index) => currentPageIndex.value=index;

  /// jump to the specific dot selected page.
  void dotNavigationClick (index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///update current index and jump to the next page

  void nextPage () {
    if(currentPageIndex.value == 2){
      final storage = GetStorage();
      storage.write("IsFirstTime", false);
      Get.offAll(LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage () {
    currentPageIndex.value= 2;
    pageController.jumpToPage(2);
  }
}