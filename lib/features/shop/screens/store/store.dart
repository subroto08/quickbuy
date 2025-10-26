import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/common/widgets/appbar/tabbar.dart';
import 'package:QuickBuy/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:QuickBuy/common/widgets/layouts/grid_layout.dart';
import 'package:QuickBuy/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:QuickBuy/common/widgets/texts/section_heading.dart';
import 'package:QuickBuy/features/shop/screens/brand/all_brands.dart';
import 'package:QuickBuy/features/shop/screens/store/widgets/category_tab.dart';
import 'package:QuickBuy/utils/constants/colors.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/brands/s_brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: SAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [SCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor:
                    SHelperFunctions.isDarkMode(context)
                        ? SColors.black
                        : SColors.white,
                expandedHeight: 440,

                flexibleSpace: Padding(
                  padding: EdgeInsets.all(SSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///searchbar
                      SizedBox(height: SSizes.spaceBtwItems),
                      SSearchContainer(
                        text: 'Search In Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: SSizes.spaceBtwSections),

                      ///Featured Brands
                      SSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () => Get.to(() =>AllBrandsScreen()),
                      ),
                      SizedBox(height: SSizes.spaceBtwItems / 1.5),

                      SGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return SBrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),

                ///Taps
                bottom: const STabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cloths')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),


            ],
          ),
        ),
      ),
    );
  }
}

