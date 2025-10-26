import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_with_verified_icon.dart';
import '../../texts/prduct_title_text.dart';

class SCartItem extends StatelessWidget {
  const SCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///image
        SRoundedImage(imageUrl: SImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(SSizes.sm),
          backgroundColor:SHelperFunctions.isDarkMode(context) ? SColors.darkerGrey : SColors.light ,
        ),
        SizedBox(width: SSizes.spaceBtwItems),
        ///title, price, Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SBrandTitleWithVerifiedIcon(title: 'Nike'),
              Flexible(child: SProductTitleText(title: 'Black sports shoes', maxLines: 1,)),
              /// Attributes
              Text.rich(TextSpan(
                  children:[
                    TextSpan(text: 'Color ',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Size ',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 08 ',style: Theme.of(context).textTheme.bodySmall),
                  ]
              )
              )
            ],
          ),
        )

      ],
    );
  }
}