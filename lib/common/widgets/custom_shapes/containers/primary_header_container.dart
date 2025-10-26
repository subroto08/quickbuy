import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edgets_widgets.dart';
import 'circular_container.dart';

class SPrimaryHeaderContainer extends StatelessWidget {
  const SPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SCurvedEdgeWidgets(
      child: Container(
        color: SColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            ///background custom Shapes
            Positioned(
              top: -150,
              right: -250,
              child: SCircularContainer(
                backgroundColor: SColors.textWhite.withAlpha((0.1 * 255).round()),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: SCircularContainer(
                backgroundColor: SColors.textWhite.withAlpha((0.1 * 255).round()),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}