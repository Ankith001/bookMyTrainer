// ignore_for_file: must_be_immutable

import 'package:bookmytrainer/core/extensions.dart';
import 'package:bookmytrainer/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    required this.onPressed,
    required this.child,
  });
  Function()? onPressed;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 48,
        width: double.infinity,
        child: FilledButton(
          style: FilledButton.styleFrom(
            textStyle: context.style.titleLarge
                ?.copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.3),
            backgroundColor: AppColors.primary,
            foregroundColor: context.scheme.background,
            // shape:
            //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}
