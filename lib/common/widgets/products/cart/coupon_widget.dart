import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class SCouponCode extends StatelessWidget {
  const SCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? SColors.dark : SColors.white,
      padding: EdgeInsets.only(
        top: SSizes.sm,
        bottom: SSizes.sm,
        left: SSizes.md,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code ? Enter here',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          ///Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark ? SColors.white.withOpacity(0.5): SColors.dark.withOpacity(0.5),
                  backgroundColor: SColors.grey.withOpacity(0.2),
                  side: BorderSide(color: SColors.grey.withOpacity(0.1))
              ),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}