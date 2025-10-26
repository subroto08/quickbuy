import 'package:flutter/material.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/common/widgets/brands/s_brand_card.dart';
import 'package:QuickBuy/common/widgets/products/sortable/sortable_products.dart';

import '../../../../utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: SAppBar(title: Text('Nike'),),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              ///Brand details
              SBrandCard(showBorder: true),
              SizedBox(height: SSizes.spaceBtwSections,),
              SSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
