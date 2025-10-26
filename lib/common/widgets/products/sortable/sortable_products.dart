import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_cards/product_card_vertical.dart';

class SSortableProducts extends StatelessWidget {
  const SSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items:
          [
            'Name',
            'Higher price',
            'Lower price',
            'Newest',
            'Popularity',
          ]
              .map(
                (option) => DropdownMenuItem(
              value: option,
              child: Text(option),
            ),
          )
              .toList(),
          onChanged: (value) {},
        ),
        SizedBox(height: SSizes.spaceBtwSections,),
        ///products
        SGridLayout(itemCount: 20, itemBuilder: (_, index) => SProductCardVertical())
      ],
    );
  }
}