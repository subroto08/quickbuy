import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/features/shop/screens/sub%20category/sub_categories.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class SHomeCategories extends StatelessWidget {
  const SHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return SVerticalImageText(
            image: SImages.sportIcon,
            title: 'cloth',
            onTap: () => Get.to(() => SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
