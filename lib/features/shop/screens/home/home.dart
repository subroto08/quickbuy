import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:QuickBuy/features/shop/screens/all%20products/all_products.dart';
import 'package:QuickBuy/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:QuickBuy/features/shop/screens/home/widgets/home_categories.dart';
import 'package:QuickBuy/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  SHomeAppbar(),

                  SizedBox(height: SSizes.spaceBtwSections),

                  ///Searchbar
                  SSearchContainer(text: 'Search in Store'),

                  SizedBox(height: SSizes.spaceBtwSections),

                  ///categories
                  Padding(
                    padding: EdgeInsets.only(left: SSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///heading
                        SSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: SSizes.spaceBtwItems),

                        ///categories
                        SHomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections,)
                ],
              ),
            ),

            ///body
            Padding(
              padding: const EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  ///promo-Slider
                  SPromoSlider(banners: [SImages.promoBanner1,SImages.promoBanner2,SImages.promoBanner3],),
                  SizedBox(height: SSizes.spaceBtwSections),

                  ///Heading
                  SSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => AllProducts())),
                  const SizedBox(height: SSizes.spaceBtwItems,),

                  ///popular Product
                  SGridLayout(itemCount: 2, itemBuilder: (_, index) => const SProductCardVertical())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






