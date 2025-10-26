import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:QuickBuy/features/shop/screens/checkout/checkout.dart';
import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: EdgeInsets.all(SSizes.defaultSpace),
        child: SCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => CheckoutScreen()), child: Text('Checkout \$256.0')),
      ),
    );
  }
}






