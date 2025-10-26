import 'package:flutter/material.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SLoginHeader extends StatelessWidget {
  const SLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(dark ? SImages.lightAppLogo :SImages.darkAppLogo)
        ),
        Text(SText.loginTitle,style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: SSizes.sm,),
        Text(SText.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,)
      ],
    );
  }
}