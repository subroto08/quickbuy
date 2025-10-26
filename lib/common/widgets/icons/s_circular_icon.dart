import 'package:flutter/material.dart';
import 'package:QuickBuy/utils/helpers/helper_functions.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class SCircularIcon extends StatelessWidget {
  const SCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = SSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,

  });

  final double ? width, height, size;
  final IconData icon;
  final Color ? color;
  final Color ? backgroundColor;
  final VoidCallback ? onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color:backgroundColor != null ? backgroundColor! : SHelperFunctions.isDarkMode(context) ? SColors.black.withAlpha((0.9 * 255).round()) : SColors.white.withAlpha((0.9 * 255).round()),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon,color: color, size: size,)),
    );
  }
}