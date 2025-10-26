import 'package:flutter/material.dart';
import 'package:QuickBuy/common/widgets/images/circular_image.dart';
import 'package:QuickBuy/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:QuickBuy/common/widgets/texts/prduct_title_text.dart';
import 'package:QuickBuy/common/widgets/texts/product_price_text.dart';
import 'package:QuickBuy/utils/constants/enums.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SProductMetaData extends StatelessWidget {
  const SProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// price and sale price
        Row(
          children: [
            ///sale tag
            SRoundedContainer(
              radius: SSizes.sm,
              backgroundColor: SColors.secondary.withAlpha(
                (0.8 * 255).round(),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: SSizes.sm,
                vertical: SSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: SColors.black),
              ),
            ),
            const SizedBox(width: SSizes.spaceBtwItems),
            ///price
            Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            SizedBox(width: SSizes.spaceBtwItems),
            const SProductPriceText(price: '175',isLarge: true,)
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),
        /// Title
        const SProductTitleText(title: 'Green Nike Sports Shoes'),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),
        /// stock status
        Row(
          children: [
            const SProductTitleText(title: 'Status'),
            const SizedBox(width: SSizes.spaceBtwItems),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(height: SSizes.spaceBtwItems / 1.5),
        /// brand
        Row(
          children: [
            SCircularImage(
              image: SImages.sportIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? SColors.white : SColors.black,
            ),
            const SBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
