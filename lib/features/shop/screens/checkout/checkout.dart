import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:QuickBuy/common/widgets/success_screen/success_screen.dart';
import 'package:QuickBuy/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:QuickBuy/features/shop/screens/checkout/billing_address_section.dart';
import 'package:QuickBuy/features/shop/screens/checkout/billing_amount_section.dart';
import 'package:QuickBuy/features/shop/screens/checkout/billing_payment_section.dart';
import 'package:QuickBuy/navigation_menu.dart';
import 'package:QuickBuy/utils/constants/colors.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: SAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              /// item in Cart
              SCartItems(showAddRemoveButton: false),
              SizedBox(height: SSizes.spaceBtwSections),

              ///coupon textField
              SCouponCode(),
              const SizedBox(height: SSizes.spaceBtwSections),

              ///billing section
              SRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(SSizes.md),
                backgroundColor: dark ? SColors.black : SColors.white,
                child: Column(
                  children: [
                    ///pricing
                    SBillingAmountSection(),
                    SizedBox(height: SSizes.spaceBtwItems),

                    ///divider
                    Divider(),
                    SizedBox(height: SSizes.spaceBtwItems),

                    ///payment method
                    SizedBox(height: SSizes.spaceBtwItems),
                    SBillingPaymentSection(),

                    ///address
                    SBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      ///check out
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(
          onPressed:
              () => Get.to(
                () => SuccessScreen(
                  images: SImages.successfulPaymentIcon,
                  title: 'Payment Success!',
                  subTitle: 'Your item will be shipped soon',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                ),
              ),
          child: Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
