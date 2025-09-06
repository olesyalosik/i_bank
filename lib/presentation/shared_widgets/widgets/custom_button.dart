import 'package:flutter/material.dart';
import 'package:i_bank/core_ui/colors/app_colors.dart';
import 'package:i_bank/core_ui/text_style/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final bool isReadOnly;
  final String label;
  final double? width;
  const CustomButton({
    super.key,
    this.isReadOnly = false,
    this.label = '',
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: isReadOnly ? AppColors.primary4 : AppColors.primary1,
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          label,
          style: AppTextStyles.bodyLarge.copyWith(color: AppColors.neutral6),
        ),
      ),
    );
  }
}
