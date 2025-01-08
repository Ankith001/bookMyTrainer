import 'package:bookmytrainer/core/extensions.dart';
import 'package:flutter/material.dart';

class PrimaryCircularProgressIndicator extends StatelessWidget {
  const PrimaryCircularProgressIndicator({super.key, this.opacityColor});

  final Color? opacityColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: opacityColor ??
          Colors.black.withOpacity(0.2), // Adjust the opacity as needed
      child: Center(
        child: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: context.scheme.surface),
            child: Transform.scale(
                scale: 0.5, child: const CircularProgressIndicator())),
      ),
    );
  }
}
