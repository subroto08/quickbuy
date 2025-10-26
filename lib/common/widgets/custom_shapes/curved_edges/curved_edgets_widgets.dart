import 'package:flutter/material.dart';

import 'curved_edges.dart';

class SCurvedEdgeWidgets extends StatelessWidget {
  const SCurvedEdgeWidgets({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: SCustomCurvedEdges(), child: child);
  }
}
