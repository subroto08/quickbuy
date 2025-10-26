import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edgets_widgets.dart';
import '../../../../../common/widgets/icons/s_circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SProductImageSlider extends StatelessWidget {
  const SProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SCurvedEdgeWidgets(
      child: Container(
        color: dark ? SColors.darkerGrey : SColors.light,
        child: Stack(
          children: [
            /// main large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(
                  SSizes.productImageRadius * 2,
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(SImages.productImage1),
                  ),
                ),
              ),
            ),

            ///image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: SSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder:
                      (_, __) =>
                  const SizedBox(width: SSizes.spaceBtwItems),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder:
                      (_, index) => SRoundedImage(
                    width: 80,
                    backgroundColor:
                    dark ? SColors.dark : SColors.white,
                    border: Border.all(color: SColors.primary),
                    padding: EdgeInsets.all(SSizes.sm),
                    imageUrl: SImages.productImage1,
                  ),
                ),
              ),
            ),

            ///appbar icons
            SAppBar(
              showBackArrow: true,
              actions: [
                SCircularIcon(icon:  Iconsax.heart5, color: Colors.red)
              ],

            )
          ],
        ),
      ),
    );
  }
}