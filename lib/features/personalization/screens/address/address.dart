import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/features/personalization/screens/address/add_new_address.dart';
import 'package:QuickBuy/features/personalization/screens/address/widgets/single_address.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => Get.to(() => AddNewAddressScreen()),
          // ignore: sort_child_properties_last
          child: const Icon(Iconsax.add,color: SColors.white),
        backgroundColor: SColors.primary,
      ),
      appBar: SAppBar(
       showBackArrow: true,
       title: Text('Address', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          children: [
            SSingleAddress(selectedAddress: false),
            SSingleAddress(selectedAddress: true),
          ],
        ),
        ),
      ),
    );
  }
}
