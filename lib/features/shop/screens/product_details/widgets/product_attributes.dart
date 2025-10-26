import 'package:flutter/material.dart';
import 'package:QuickBuy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:QuickBuy/common/widgets/texts/prduct_title_text.dart';
import 'package:QuickBuy/common/widgets/texts/product_price_text.dart';
import 'package:QuickBuy/common/widgets/texts/section_heading.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SProductAttributes extends StatelessWidget {
  const SProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///selected Attributes prices and Description
        SRoundedContainer(
          padding: EdgeInsets.all(SSizes.md),
          backgroundColor: dark ? SColors.darkerGrey : SColors.grey,
          child: Column(
            children: [
              ///title, price and Stock Status
              Row(
                children: [
                  SSectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: SSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SProductTitleText(title: 'Price : ', smallSize: true),

                          /// actual price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: SSizes.spaceBtwItems),

                          /// Sale price
                          SProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          SProductTitleText(title: 'Stock : ', smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              ///variation Description
              SProductTitleText(
                title:
                    'This is the Description of the product and it can go upto max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: SSizes.spaceBtwItems),

        ///Attributes
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SSectionHeading(title: 'Colors',showActionButton: false,),
            SizedBox(height: SSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiceChip(text: 'Green', selected: false, onSelected: (value){},),
                SChoiceChip(text: 'Blue', selected: true,onSelected: (value){},),
                SChoiceChip(text: 'Yellow', selected: false,onSelected: (value){}),

              ],
            )
          ],
        ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SSectionHeading(title: 'Size',showActionButton: false,),
            SizedBox(height: SSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiceChip(text: 'EU 34', selected: true,onSelected: (value){},),
                SChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                SChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),

              ],
            )
          ],
        ),
      ],
    );
  }
}


