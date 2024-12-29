import 'package:bookmytrainer/core/extensions.dart';
import 'package:flutter/material.dart';

class PrimaryCircularProgressIndicator extends StatelessWidget {
  const PrimaryCircularProgressIndicator({super.key, this.opacityColor});

  final Color? opacityColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: opacityColor ??
          Colors.black.withOpacity(0.5), // Adjust the opacity as needed
      child: Center(
        child: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: context.scheme.background),
            child: Transform.scale(
                scale: 0.7,
                child: const CircularProgressIndicator(
                  strokeWidth: 5,
                ))),
      ),
    );
  }
}
