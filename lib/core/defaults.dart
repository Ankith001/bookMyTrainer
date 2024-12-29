import 'package:bookmytrainer/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppDefaults {
  static const double padding = 16.0;
  static const double borderRadius = 8.0;
  static const double borderRadius16 = 16.0;
  static const double borderRadius24 = 24.0;
  static const double borderRadius32 = 32.0;
  static const double inputFieldRadius = 12.0;
  static const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(AppDefaults.borderRadius),
      ),
      borderSide: BorderSide.none);
  static OutlineInputBorder focusedOutlineInputBorder =
      outlineInputBorder.copyWith(
          borderSide: const BorderSide(width: 2, color: AppColors.primary));

  static Decoration kContainerDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1), // Shadow color
        offset: const Offset(4, 4), // Directional offset
        blurRadius: 23.8, // Soft edges
        spreadRadius: 0, // Shadow size
      ),
    ],
    border: Border.all(
      color: const Color(0xFFF5F5F5),
    ),
    color: Colors.white,
    borderRadius: const BorderRadius.all(
      Radius.circular(AppDefaults.borderRadius16),
    ),
  );
}
