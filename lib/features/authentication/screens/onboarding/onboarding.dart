import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:QuickBuy/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:QuickBuy/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:QuickBuy/features/authentication/screens/onboarding/widgets/onbording_dot_navigation.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';
import 'package:QuickBuy/utils/constants/text_strings.dart';

import '../../controllers/onboarding/onboarding_controller.dart';



class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged:controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: SImages.onBoardingImages1,
                title: SText.onBoardingTitle1,
                subTitle: SText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImages2,
                title: SText.onBoardingTitle2,
                subTitle: SText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImages3,
                title: SText.onBoardingTitle3,
                subTitle: SText.onBoardingSubTitle3,
              ),
            ],
          ),

          ///skip button
          const OnBoardingSkip(),

          /// dot navigation smoothPageIndicator
          const OnBoardingDotNavigation(),
          
          ///Circular Button
          OnboardingNextButton()
        ],
      ),
    );
  }
}




