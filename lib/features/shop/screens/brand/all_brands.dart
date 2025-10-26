import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/common/widgets/brands/s_brand_card.dart';
import 'package:QuickBuy/common/widgets/layouts/grid_layout.dart';
import 'package:QuickBuy/common/widgets/texts/section_heading.dart';
import 'package:QuickBuy/features/shop/screens/brand/brand_products.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              ///heading
              SSectionHeading(title: 'Brands', showActionButton: false),
              SizedBox(height: SSizes.spaceBtwItems),

              ///brands
              SGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => SBrandCard(showBorder: true,onTap: () =>Get.to(() =>BrandProducts()),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
