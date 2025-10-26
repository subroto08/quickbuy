import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/common/widgets/form_divider.dart';
import 'package:QuickBuy/common/widgets/social_buttons.dart';
import 'package:QuickBuy/features/authentication/screens/signup_widgets/signup_form.dart';
import 'package:QuickBuy/utils/constants/text_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(
                SText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              ///form
              SSignupForm(),
              const SizedBox(height: SSizes.spaceBtwSections,),
              ///divider
              SFormDivider(dividerText: SText.orSignUpWith.capitalize!),

              const SizedBox(height: SSizes.spaceBtwSections,),

              ///social button
              const SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


