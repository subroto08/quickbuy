

import 'package:flutter/cupertino.dart';
import 'package:QuickBuy/utils/constants/colors.dart';

class SShadowStyle {

  static final verticalProductShadow = BoxShadow(
    color: SColors.darkGrey.withAlpha((0.1 * 255).round()),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)

  );

  static final horizontalProductShadow = BoxShadow(
      color: SColors.darkGrey.withAlpha((0.1 * 255).round()),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );


}