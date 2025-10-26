import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:QuickBuy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../../utils/constants/colors.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(SImages.userProfileImage1)),
                SizedBox(width: SSizes.spaceBtwItems,),
                Text('Lisa',style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(width: SSizes.spaceBtwItems),

        //Review
        Row(
            children: [
              SRatingBarIndicator(rating: 4),
              SizedBox(width: SSizes.spaceBtwItems,),
              Text('01 Nov, 2023',style: Theme.of(context).textTheme.bodyMedium ,)
            ],
        ),
        SizedBox(height: SSizes.spaceBtwItems,),
        ReadMoreText('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using',
        trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Show less',
          trimCollapsedText: ' Show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),

        ),
        SizedBox(height: SSizes.spaceBtwItems),

        ///Company Review
        SRoundedContainer(
          backgroundColor: dark ? SColors.darkerGrey : SColors.grey,
          child: Padding(
            padding: EdgeInsets.all(SSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('S store', style: Theme.of(context).textTheme.titleMedium,),
                    Text('02 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium,)
                  ],
                ),
                SizedBox(height: SSizes.spaceBtwItems,),
                ReadMoreText('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' Show less',
                  trimCollapsedText: ' Show more',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),

                ),
              ],
            ),

          ),
        ),
        SizedBox(height: SSizes.spaceBtwSections,)



        
      ],
    );
  }
}
