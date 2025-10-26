import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SSingleAddress extends StatelessWidget {
  const SSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      padding: EdgeInsets.all(SSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          selectedAddress
              ? SColors.primary.withOpacity(0.5)
              : Colors.transparent,
      borderColor:
          selectedAddress
              ? Colors.transparent
              : dark
              ? SColors.darkerGrey
              : SColors.grey,
      margin: EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color:
                  selectedAddress
                      ? dark
                          ? SColors.light
                          : SColors.dark
                      : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text('Subroto Roy',
             maxLines: 1,
               overflow: TextOverflow.ellipsis,
               style: Theme.of(context).textTheme.titleLarge,
             ),
              SizedBox(height: SSizes.sm / 2,),
              Text('(+088) 1750728623',
              maxLines: 1,
                overflow: TextOverflow.ellipsis
              ),
              SizedBox(height: SSizes.sm / 2),
              Text('Lohagara Bazar, Pirgonj, Thakurgaon', softWrap: true,)

            ],
          )
        ],
      ),
    );
  }
}
