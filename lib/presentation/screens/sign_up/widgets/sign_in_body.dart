import 'package:flutter/material.dart';
import 'package:i_bank/core_ui/colors/app_colors.dart';
import 'package:i_bank/core_ui/text_style/app_text_styles.dart';
import 'package:i_bank/presentation/shared_widgets/widgets/custom_text_field.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  bool isTermsAgreed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomTextField(hintText: 'Name'),
        SizedBox(height: 20),
        CustomTextField(hintText: 'Text Input'),
        SizedBox(height: 20),
        CustomTextField(hintText: 'Password', isPassword: true),
        SizedBox(height: 20),
        Row(
          children: <Widget>[
            Checkbox(
              value: isTermsAgreed,
              activeColor: AppColors.neutral6,
              checkColor: AppColors.primary1,
              side: WidgetStateBorderSide.resolveWith((states) {
                if (isTermsAgreed) {
                  return BorderSide(color: AppColors.primary1, width: 2);
                }
                return BorderSide(
                  color: AppColors.checkBoxBorderColor,
                  width: 2,
                );
              }),
              onChanged: (val) => setState(() {
                isTermsAgreed = val ?? false;
              }),
            ),

            SizedBox(width: 12),
            Expanded(
              child: RichText(
                textAlign: TextAlign.start,
                overflow: TextOverflow.visible,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By creating an account your aggree to our ',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.neutral1,
                      ),
                    ),
                    TextSpan(
                      text: 'Term and Condtions',
                      style: AppTextStyles.titleSmall.copyWith(
                        color: AppColors.primary1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
