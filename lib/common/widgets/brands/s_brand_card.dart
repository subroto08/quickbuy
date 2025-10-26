import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_with_verified_icon.dart';

class SBrandCard extends StatelessWidget {
  const SBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

final bool showBorder;
final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark =SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: SRoundedContainer(
        padding: EdgeInsets.all(SSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// icon
            Flexible(
              child: SCircularImage(
                isNetworkImage: false,
                image: SImages.shoeIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                dark
                    ? SColors.white
                    : SColors.black,
              ),
            ),
            SizedBox(width: SSizes.spaceBtwItems / 2),

            ///text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style:
                    Theme.of(
                      context,
                    ).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}