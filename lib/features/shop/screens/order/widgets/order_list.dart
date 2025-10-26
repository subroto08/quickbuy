import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class SOrderListItems extends StatelessWidget {
  const SOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (_,__) => SizedBox(height: SSizes.spaceBtwItems),
      itemBuilder: (_, index) => SRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(SSizes.md),
        backgroundColor: dark ? SColors.dark : SColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                /// Icon
                Icon(Iconsax.ship),
                SizedBox(width: SSizes.spaceBtwItems/2),
      
                /// status or date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: SColors.primary, fontWeightDelta:1),
                      ),
                      Text('06 july 2025',style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                /// Icon
                IconButton(onPressed: () {}, icon: Icon(Iconsax.arrow_right_34,size: SSizes.iconSm,))
              ],
            ),
      
            SizedBox(height: SSizes.spaceBtwItems),
            /// row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      Icon(Iconsax.ship),
                      SizedBox(width: SSizes.spaceBtwItems/2),
      
                      /// status or date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('[2ifr]', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: SSizes.spaceBtwItems/2),
      
                      /// status or date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shopping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('06 july 2025', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
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
