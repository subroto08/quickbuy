import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/common/widgets/success_screen/success_screen.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';
import 'package:QuickBuy/utils/constants/text_strings.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/sizes.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(
                image: AssetImage(SImages.deliveredEmailIllustration),
                width: SHelperFunctions.screenHeight() * 0.6,
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              ///Title and subtitle
              Text(
                SText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SSizes.spaceBtwItems),
              Text(
                'subrotoroy@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SSizes.spaceBtwItems),
              Text(
                SText.confirmSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      () => Get.to(
                        () => SuccessScreen(
                          images: SImages.staticSuccessIllustration,
                          title: SText.yourAccountCreatedTitle,
                          subTitle: SText.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => LoginScreen()),
                        ),
                      ),
                  child: Text(SText.sContinue),
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(SText.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
