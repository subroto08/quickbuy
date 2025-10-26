import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:QuickBuy/common/widgets/images/rounded_image.dart';
import 'package:QuickBuy/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:QuickBuy/common/widgets/texts/prduct_title_text.dart';
import 'package:QuickBuy/common/widgets/texts/product_price_text.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/s_circular_icon.dart';

class SProductCardHorizontal extends StatelessWidget {
  const SProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
        width: 310,
        padding: EdgeInsets.all(1),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(SSizes.productImageRadius),
    color: dark ? SColors.darkGrey : SColors.softGrey,
    ),
      child: Row(
        children: [
          ///thumbnail
          SRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(SSizes.sm),
            backgroundColor: dark ? SColors.dark : SColors.light,
            child:  Stack(
              children: [
                SizedBox(
                  height:120,
                    width: 120,
                    child: SRoundedImage(imageUrl: SImages.productImage1,applyImageRadius: true,)
                ),
                ///sale tag
                Positioned(
                  top: 12,
                  child: SRoundedContainer(
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
                ),
                ///favourite icon button
                Positioned(
                  top: 0,
                  right: 0,
                  child: SCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),
          ///details
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: SSizes.sm, left: SSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SProductTitleText(title: 'Green nike shoes',smallSize: true),
                      SizedBox(height: SSizes.spaceBtwItems / 2,),
                      SBrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///pricing
                      Flexible(child: SProductPriceText(price: '256.0')),

                      /// add to cart
                      Container(
                        decoration: BoxDecoration(
                          color: SColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(SSizes.cardRadiusMd),
                            bottomRight: Radius.circular(SSizes.productImageRadius),
                          )
                        ),
                        child: SizedBox(
                          width: SSizes.iconLg * 1.2,
                          height: SSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: SColors.white,)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
