import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/common/widgets/icons/s_circular_icon.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class SBottomAddToCart extends StatelessWidget {
  const SBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SSizes.defaultSpace,
        vertical: SSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? SColors.darkerGrey : SColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SSizes.cardRadiusLg),
          topRight: Radius.circular(SSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: SColors.darkGrey,
                width: 40,
                height: 40,
                color: SColors.white,
              ),
              SizedBox(width: SSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              SizedBox(width: SSizes.spaceBtwItems),

              SCircularIcon(
                icon: Iconsax.add,
                backgroundColor: SColors.black,
                width: 40,
                height: 40,
                color: SColors.white,
              ),
            ],
          ),
          ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(SSizes.md),
                backgroundColor: SColors.black,
                side: BorderSide(color: SColors.black)
              ),

              child: Text('Add To Cart')),
        ],
      ),
    );
  }
}
