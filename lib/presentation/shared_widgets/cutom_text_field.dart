import 'package:flutter/material.dart';
import 'package:i_bank/core_ui/colors/app_colors.dart';
import 'package:i_bank/core_ui/text_style/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final bool isPassword;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    this.hintText,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      style: AppTextStyles.bodySmall.copyWith(color: AppColors.neutral1),
      decoration: InputDecoration(
        hintStyle: AppTextStyles.captionSmall.copyWith(
          color: AppColors.neutral4,
        ),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: AppColors.textFieldBorderColor,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: AppColors.textFieldBorderColor,
            width: 1.0,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: AppColors.textFieldBorderColor,
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: AppColors.textFieldBorderColor,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: AppColors.textFieldBorderColor,
            width: 1.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: AppColors.textFieldBorderColor,
            width: 1.0,
          ),
        ),
        contentPadding: EdgeInsets.only(left: 12, top: 12, bottom: 12),
      ),
    );
  }
}
