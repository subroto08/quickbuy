import 'package:flutter/material.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:QuickBuy/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        ///appBar
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      ///body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'It is a long established fact that a reader will be distracted by the readable ',
              ),
              SizedBox(height: SSizes.spaceBtwItems,),

              ///overall product ratings
              SOverallProductRating(),
              SRatingBarIndicator(rating: 3.5,),
              Text('12,611',style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: SSizes.spaceBtwSections,),

              ///user reviews list
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),




            ],
          ),
        ),
      ),
    );
  }
}






