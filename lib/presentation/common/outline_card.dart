import 'package:bookmytrainer/core/extensions.dart';
import 'package:flutter/material.dart';

class OutlineCard extends StatelessWidget {
  const OutlineCard({
    super.key,
    required this.child,
    this.width,
    this.height,
  });

  final Widget child;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        color: context.scheme.surface,
        elevation: 0, // Shadow depth for the card
        shape: RoundedRectangleBorder(
          side: BorderSide(color: context.scheme.outline.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
        child: child,
      ),
    );
  }
}
