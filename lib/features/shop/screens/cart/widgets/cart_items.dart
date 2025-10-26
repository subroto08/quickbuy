
import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remive_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class SCartItems extends StatelessWidget {
  const SCartItems({
    super.key, this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder:
          (_, __) => SizedBox(height: SSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          SCartItem(),
          if(showAddRemoveButton) const SizedBox(height: SSizes.spaceBtwItems),

          if(showAddRemoveButton)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70,),
                  ///Add remove button
                  SProductQuantityWithAddRemoveButton(),
                ],
              ),

              SProductPriceText(price: '256')

            ],
          )
        ],
      ),
    );
  }
}