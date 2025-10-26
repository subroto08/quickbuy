import 'package:QuickBuy/features/authentication/controllers/signup/signup_controller.dart';
import 'package:QuickBuy/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/features/authentication/screens/signup_widgets/term_and_conditon_checkbox.dart';
import 'package:QuickBuy/features/authentication/screens/signup_widgets/verify_email.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => SValidator.validateEmptyText('first name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: SText.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: SSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) => SValidator.validateEmptyText('last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: SText.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          ///username
          TextFormField(
            controller: controller.username,
            validator: (value) => SValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: SText.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          ///Email
          TextFormField(
            controller: controller.email,
            validator: (value) => SValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: SText.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          ///phone number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => SValidator.validatephoneNumber(value),
            decoration: const InputDecoration(
              labelText: SText.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          ///password
          TextFormField(
            controller: controller.password,
            validator: (value) => SValidator.validatePassword(value),
            obscureText: true,
            decoration: const InputDecoration(
              labelText: SText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          ///term and condition checkbox
          const STermAndCondition(),
          const SizedBox(height: SSizes.spaceBtwSections),

          /// sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton( 
              onPressed: () => controller.signup(),
              child: const Text(SText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
