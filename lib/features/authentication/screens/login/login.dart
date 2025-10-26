import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/common/styles/spacing_style.dart';
import 'package:QuickBuy/features/authentication/screens/login/widgets/login_form.dart';
import 'package:QuickBuy/features/authentication/screens/login/widgets/login_header.dart';
import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart'; 

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Padding(padding: SSpacingStyle.paddingWithAppBarHeight,
         child: Column(
           children: [
             ///logo,title,subtitle
             SLoginHeader(),

             ///Form
             SLoginForm(),
             ///Divider
             SFormDivider(dividerText: SText.orSignInWith.capitalize!,),
             const SizedBox(height: SSizes.spaceBtwSections,),
             ///footer
             SSocialButtons()
           ],
         ),
         ),

       ),
    );
  }
}








