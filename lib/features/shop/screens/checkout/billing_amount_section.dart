import 'package:flutter/material.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';

class SBillingAmountSection extends StatelessWidget {
  const SBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('৳250.0',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(height: SSizes.spaceBtwItems / 2,),

        ///shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('৳6.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: SSizes.spaceBtwItems / 2,),

        ///Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('৳6.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: SSizes.spaceBtwItems / 2,),

        ///Order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,),
            Text('৳6.0',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
      ],
    );
  }
}
