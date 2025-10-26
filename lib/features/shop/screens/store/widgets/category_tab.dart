import 'package:flutter/material.dart';
import 'package:QuickBuy/common/widgets/layouts/grid_layout.dart';
import 'package:QuickBuy/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:QuickBuy/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SCategoryTab extends StatelessWidget {
  const SCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[Padding(
        padding:EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          children: [
            ///Brands
            SBrandShowcase(images: [SImages.productImage1, SImages.productImage2,SImages.productImage1]),
            SBrandShowcase(images: [SImages.productImage1, SImages.productImage2,SImages.productImage1]),
            const SizedBox(height: SSizes.spaceBtwItems),
            ///Products
            SSectionHeading(title: 'You might like', onPressed: (){}),
            const SizedBox(height: SSizes.spaceBtwItems),

            SGridLayout(itemCount: 4, itemBuilder: (_, index) => SProductCardVertical()),
            const SizedBox(height: SSizes.spaceBtwSections)
          ],
        ),
      ),
      ]
    );
  }
}
