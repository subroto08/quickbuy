import 'package:flutter/material.dart';
import 'package:QuickBuy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:QuickBuy/common/widgets/texts/section_heading.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class SBillingPaymentSection extends StatelessWidget {
  const SBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        SSectionHeading(title: 'Payment Method',buttonTitle: 'Change',onPressed: (){},),
        SizedBox(height: SSizes.spaceBtwItems / 2,),
        Row(
          children: [
            SRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? SColors.light : SColors.white,
              padding: EdgeInsets.all(SSizes.sm),
              child: Image(image: AssetImage(SImages.paypal),fit: BoxFit.cover,),
            ),
            SizedBox(width: SSizes.spaceBtwItems / 2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,)

          ],
        )
      ],
    );
  }
}
