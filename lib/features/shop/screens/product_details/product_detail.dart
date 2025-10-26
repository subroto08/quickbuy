import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:QuickBuy/common/widgets/texts/section_heading.dart';
import 'package:QuickBuy/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:QuickBuy/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:QuickBuy/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:QuickBuy/features/shop/screens/product_details/widgets/product_meata_data.dart';
import 'package:QuickBuy/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:QuickBuy/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: SBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product image slider
            SProductImageSlider(),

            /// product details
            Padding(padding: EdgeInsets.only(right: SSizes.defaultSpace,left: SSizes.defaultSpace,bottom: SSizes.defaultSpace),
            child: Column(
              children: [
                ///Rating and Share
                SRatingAndShare(),
                ///price, title, stock, brand
                SProductMetaData(),
                ///Attributes
                SProductAttributes(),
                SizedBox(height: SSizes.spaceBtwSections,),
                ///CheckOut Button
                SizedBox(
                  width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                SizedBox(height: SSizes.spaceBtwSections,),
                ///Description
                SSectionHeading(title: 'Description',showActionButton: false,),
                SizedBox(height: SSizes.spaceBtwItems,),
                ReadMoreText(
                  'This is a product description for blue nike shoes It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),
                ///Reviews
                Divider(),
                SizedBox(height: SSizes.spaceBtwItems,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SSectionHeading(title: 'Reviews (199)', showActionButton: false,),
                    IconButton(onPressed: () => Get.to(() => ProductReviewsScreen()) , icon: Icon(Iconsax.arrow_right_3,size: 18,),)
                  ],
                ),
                SizedBox(height: SSizes.spaceBtwSections,)
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}




