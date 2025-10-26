import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:QuickBuy/features/authentication/screens/signup_widgets/signup.dart';
import 'package:QuickBuy/navigation_menu.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SLoginForm extends StatelessWidget {
  const SLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwSections),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: SText.email,
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwInputFields,),

              ///password
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: SText.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwInputFields / 2,),

              ///remember me and forget password
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///remember me
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value){}),
                        const Text(SText.rememberMe,),
                      ],
                    ),
                    /// forget password
                    TextButton(onPressed: () => Get.to(() => ForgetPassword()), child: const Text(SText.forgetPassword)),
                  ],
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              ///sign in button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed:() => Get.to(() => const NavigationMenu()) , child: Text(SText.signIn))),
              const SizedBox(height: SSizes.spaceBtwItems,),
              ///create account button

              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed:() =>Get.to( ()=>const SignupScreen()), child: Text(SText.createAccount))),
            ],
          ),
        )
    );
  }
}