import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 's_brand_card.dart';

class SBrandShowcase extends StatelessWidget {
  const SBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SRoundedContainer(
      showBorder: true,
      borderColor: SColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      padding: EdgeInsets.all(SSizes.md),
      child: Column(
        children: [
          ///brands with product count
          const SBrandCard(showBorder: false),
          SizedBox(height: SSizes.spaceBtwItems),

          ///brands top 3 products
          Row(
            children:
            images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: SRoundedContainer(
      height: 100,
      backgroundColor:
      SHelperFunctions.isDarkMode(context)
          ? SColors.darkGrey
          : SColors.light,
      margin: const EdgeInsets.only(right: SSizes.sm),
      padding: const EdgeInsets.all(SSizes.md),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(image),
      ),
    ),
  );
}
