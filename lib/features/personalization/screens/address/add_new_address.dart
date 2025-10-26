 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';

import '../../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
   const AddNewAddressScreen({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: SAppBar(
         showBackArrow: true,
         title: Text('Add new Address'),
       ),
       body: SingleChildScrollView(
         child: Padding(padding: EdgeInsets.all(SSizes.defaultSpace),
           child: Form(
             child: Column(
               children: [
                 TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Name'
                  ),
                 ),
                 SizedBox(height: SSizes.spaceBtwInputFields,),
                 TextFormField(
                   decoration: InputDecoration(
                       prefixIcon: Icon(Iconsax.mobile),
                       labelText: 'Phone Number'
                   ),
                 ),
                 SizedBox(height: SSizes.spaceBtwInputFields,),

                 Row(
                   children: [
                     Expanded(
                       child: TextFormField(
                         decoration: InputDecoration(
                             prefixIcon: Icon(Iconsax.building_31),
                             labelText: 'Street'
                         ),
                       ),
                     ),
                     SizedBox(width: SSizes.spaceBtwInputFields,),
                     Expanded(
                       child: TextFormField(
                         decoration: InputDecoration(
                             prefixIcon: Icon(Iconsax.code),
                             labelText: 'Postal code'
                         ),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: SSizes.spaceBtwInputFields,),
                 Row(
                   children: [
                     Expanded(
                       child: TextFormField(
                         decoration: InputDecoration(
                             prefixIcon: Icon(Iconsax.building),
                             labelText: 'City'
                         ),
                       ),
                     ),
                     SizedBox(width: SSizes.spaceBtwInputFields,),
                     Expanded(
                       child: TextFormField(
                         decoration: InputDecoration(
                             prefixIcon: Icon(Iconsax.activity),
                             labelText: 'State'
                         ),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: SSizes.spaceBtwInputFields,),
                 TextFormField(
                   decoration: InputDecoration(
                       prefixIcon: Icon(Iconsax.global),
                       labelText: 'Country'
                   ),
                 ),
                 SizedBox(height: SSizes.defaultSpace),
                 SizedBox(
                   width:double.infinity,
                   child: ElevatedButton(onPressed: (){}, child: Text('Save')),
                 )

               ],
             ),
           ),
         ),
       ),
     );
   }
 }
