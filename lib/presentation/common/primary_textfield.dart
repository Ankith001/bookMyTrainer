// ignore_for_file: must_be_immutable


import 'package:bookmytrainer/core/extensions.dart';
import 'package:bookmytrainer/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  PrimaryTextField({
    super.key,
    this.labelText,
    this.filled = true,
    this.contentPadding,
    this.keyboardType,
    this.validator,
    this.controller,
  });

  String? labelText;
  bool? filled;
  EdgeInsetsGeometry? contentPadding;
  TextInputType? keyboardType;
  String? Function(String?)? validator;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
            // enabled: false,
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: context.scheme.errorContainer,
              width: 0.5,
            )),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: context.scheme.errorContainer,
              width: 0.5,
            )),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey,
              width: 0.5,
            )),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: context.scheme.surface,
              width: 0.5,
            )),
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: context.scheme.surface,
              width: 0.5,
            )),
            fillColor: AppColors.bgLight,
            filled: true,
            contentPadding: contentPadding ??
                const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            labelText: labelText,
            labelStyle: context.style.bodyMedium
                ?.copyWith(fontWeight: FontWeight.w100, color: Colors.black54)),
        keyboardType: keyboardType,
      ),
    );
  }
}
