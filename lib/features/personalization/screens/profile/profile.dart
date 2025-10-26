import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/common/widgets/images/circular_image.dart';
import 'package:QuickBuy/common/widgets/texts/section_heading.dart';
import 'package:QuickBuy/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';

import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SCircularImage(image: SImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: Text("Change Profile Picture")),
                  ],
                ),
              ),
              ///details
              const SizedBox(height: SSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: SSizes.spaceBtwItems),
              ///heading of profile
              SSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: SSizes.spaceBtwItems),

               SProfileMenu(onPressed: () {},title: 'Name', value: 'Subroto Roy'),
               SProfileMenu(onPressed: () {}, title: 'Username', value: 'Subroto Roy'),

              const SizedBox(height: SSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: SSizes.spaceBtwItems),

              ///heading Personal info
              SSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: SSizes.spaceBtwItems),

              SProfileMenu(onPressed: () {}, title: 'User 10', value: '4792', icon: Iconsax.copy,),
              SProfileMenu(onPressed: () {}, title: 'E-mail', value: 'subrotor808@gmail.com'),
              SProfileMenu(onPressed: () {}, title: 'Phone Number', value: '01750728623'),
              SProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              SProfileMenu(onPressed: () {}, title: 'Date of Birth', value: '30 oct, 2003'),
              const Divider(),
              const SizedBox(height: SSizes.spaceBtwItems),

              Center(
                child: TextButton(onPressed: () {}, child: Text('Closed Account',style: TextStyle(color: Colors.red),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}


