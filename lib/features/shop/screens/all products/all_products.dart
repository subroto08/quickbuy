import 'package:flutter/material.dart';
import 'package:QuickBuy/common/widgets/appbar/appbar.dart';
import 'package:QuickBuy/utils/constants/sizes.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(title: Text('popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: SSortableProducts(),
        ),
      ),
    );
  }
}


