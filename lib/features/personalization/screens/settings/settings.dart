import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:QuickBuy/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:QuickBuy/common/widgets/texts/section_heading.dart';
import 'package:QuickBuy/features/personalization/screens/address/address.dart';
import 'package:QuickBuy/features/shop/screens/order/order.dart';
import 'package:QuickBuy/utils/constants/colors.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';
import '../profile/profile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            SPrimaryHeaderContainer(
                child: Column(
                  children: [
                   SAppBar(title: Text("Account",style: Theme.of(context).textTheme.headlineMedium!.apply(color: SColors.white),),),
                    const SizedBox(height: SSizes.spaceBtwSections,),


                    ///user profile card
                    SUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                    SizedBox(height: SSizes.spaceBtwSections,)

                  ],
                )
            ),

            ///body
             Padding(padding: EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  ///accounts settings
                  SSectionHeading(title: "Account Settings",showActionButton: false,),
                  const SizedBox(height: SSizes.spaceBtwItems,),

                  SSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Address',
                      subTitle: 'Set Shopping delivery address',
                    onTap: () => Get.to(() => UserAddressScreen()) ,
                  ),
                  SSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout'
                  ),
                  SSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In-progress and Complete Orders',
                    onTap: () =>Get.to(() => const OrderScreen()),
                  ),
                  SSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'withdraw balance to registered bank account'
                  ),
                  SSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons'
                  ),
                  SSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification message'
                  ),
                  SSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts'
                  ),

                  ///app settings
                  SizedBox(height: SSizes.spaceBtwSections,),
                  SSectionHeading(title: 'App Settings',showActionButton: false,),
                  SizedBox(height: SSizes.spaceBtwItems,),
                  SSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),

                  SSettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// LogOut Button
                  const SizedBox(height: SSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections * 2.5,)

                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}


