import 'package:flutter/material.dart';
import 'package:QuickBuy/common/widgets/texts/section_heading.dart';

import '../../../../utils/constants/sizes.dart';

class SBillingAddressSection extends StatelessWidget {
  const SBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SSectionHeading(title: 'Shipping Address',buttonTitle: 'Change', onPressed: (){},),
        Text('Subroto Roy',style: Theme.of(context).textTheme.bodyLarge,),

        Row(
          children: [
            Icon(Icons.phone,color: Colors.grey, size: 16,),
            SizedBox(width: SSizes.spaceBtwItems,),
            Text('+01750728623',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: SSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.location_history,color: Colors.grey, size: 16,),
            SizedBox(width: SSizes.spaceBtwItems,),
            Expanded(child: Text('Lohagara Bazar,Pirgonj,Thakurgaon',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,maxLines: 2,))
          ],
        ),
      ],
    );
  }
}
