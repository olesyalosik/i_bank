import 'package:flutter/material.dart';
import 'package:i_bank/core_ui/colors/app_colors.dart';
import 'package:i_bank/core_ui/text_style/app_text_styles.dart';
import 'package:i_bank/presentation/shared_widgets/cutom_text_field.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        CustomTextField(hintText: 'Text input'),
        SizedBox(height: 20),
        CustomTextField(hintText: 'Password', isPassword: true),
        SizedBox(height: 12),
        Text(
          textAlign: TextAlign.right,
          'Forgot your password ?',
          style: AppTextStyles.captionSmall.copyWith(color: AppColors.neutral4),
        ),
      ],
    );
  }
}
