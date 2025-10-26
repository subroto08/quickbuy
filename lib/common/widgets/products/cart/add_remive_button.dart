import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/s_circular_icon.dart';

class SProductQuantityWithAddRemoveButton extends StatelessWidget {
  const SProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SCircularIcon(icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: SSizes.md,
          color: SHelperFunctions.isDarkMode(context) ? SColors.white : SColors.black,
          backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.darkerGrey : SColors.light,
        ),
        SizedBox(width: SSizes.spaceBtwItems),
        Text('2' , style: Theme.of(context).textTheme.titleSmall,),
        SizedBox(width: SSizes.spaceBtwItems,),
        SCircularIcon(icon: Iconsax.add,
            width: 32,
            height: 32,
            size: SSizes.md,
            color: SColors.white,
            backgroundColor: SColors.primary
        ),
      ],
    );
  }
}