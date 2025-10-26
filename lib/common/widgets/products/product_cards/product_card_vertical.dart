import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/common/styles/shadows.dart';
import 'package:QuickBuy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:QuickBuy/common/widgets/images/rounded_image.dart';
import 'package:QuickBuy/common/widgets/texts/product_price_text.dart';
import 'package:QuickBuy/features/shop/screens/product_details/product_detail.dart';
import 'package:QuickBuy/utils/constants/colors.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';
import '../../icons/s_circular_icon.dart';
import '../../texts/brand_title_with_verified_icon.dart';
import '../../texts/prduct_title_text.dart';

class SProductCardVertical extends StatelessWidget {
  const SProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() =>  ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [SShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SSizes.productImageRadius),
          color: dark ? SColors.darkGrey : SColors.white,
        ),
        child: Column(
          children: [
            ///Thumbnail,wishlist Button, discount tag
            SRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(SSizes.sm),
              backgroundColor: dark ? SColors.dark : SColors.light,
              child: Stack(
                children: [
                  ///--thumbnail_image
                  SRoundedImage(
                    imageUrl: SImages.productImage1,
                    applyImageRadius: true,
                  ),
      
                  ///sale Tag
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
      
                  /// favourite icon button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwItems / 2),
      
            ///--details
            Padding(
              padding: EdgeInsets.only(left: SSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SProductTitleText(title: 'Nike Shoes', smallSize: true),
                  SizedBox(height: SSizes.spaceBtwItems / 2),
                  SBrandTitleWithVerifiedIcon(title: 'Nike',),

                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///price
                Padding(
                  padding: const EdgeInsets.only(left: SSizes.sm),
                  child: SProductPriceText(price: '35.0'),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: SColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(SSizes.cardRadiusMd),
                      bottomRight: Radius.circular(
                        SSizes.productImageRadius,
                      ),
                    ),
                  ),
                  child: SizedBox(
                    width: SSizes.iconLg * 1.2,
                    height: SSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: SColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


