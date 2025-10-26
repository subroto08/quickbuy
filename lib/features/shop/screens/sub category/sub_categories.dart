import 'package:flutter/material.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/common/widgets/images/rounded_image.dart';
import 'package:QuickBuy/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:QuickBuy/common/widgets/texts/section_heading.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              ///banner
              SRoundedImage(imageUrl: SImages.promoBanner2,width: double.infinity,applyImageRadius: true,),
              SizedBox(height: SSizes.spaceBtwSections,),

              ///sub categories
              Column(
                children: [
                  ///heading
                  SSectionHeading(title: 'Sports Shirts', onPressed: (){},),
                  SizedBox(height: SSizes.spaceBtwItems / 2,),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => SizedBox(width: SSizes.spaceBtwItems,),
                        itemBuilder:(context, index) => const SProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
