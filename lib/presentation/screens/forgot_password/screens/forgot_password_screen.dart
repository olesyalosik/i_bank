import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i_bank/core/app_di/app_di.dart';
import 'package:i_bank/core_ui/colors/app_colors.dart';
import 'package:i_bank/core_ui/text_style/app_text_styles.dart';
import 'package:i_bank/navigation/app_router.dart';
import 'package:i_bank/presentation/shared_widgets/widgets/base_screen.dart';
import 'package:i_bank/presentation/shared_widgets/widgets/custom_button.dart';
import 'package:i_bank/presentation/shared_widgets/widgets/custom_text_field.dart';

@RoutePage()
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Padding(
        padding: EdgeInsetsGeometry.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: AppColors.neutral6,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: <BoxShadow>[AppColors.dropShadowCard],
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Type your phone number',
                      style: AppTextStyles.captionLarge.copyWith(
                        color: AppColors.forgotPasswordColor,
                      ),
                    ),
                    SizedBox(height: 16),
                    CustomTextField(hintText: '(+375)'),
                    SizedBox(height: 24),
                    Text(
                      'We texted you a code to verify your phone number',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.neutral1,
                      ),
                    ),
                    SizedBox(height: 24),
                    GestureDetector(
                      onTap: () => appLocator.get<AppRouter>().navigate(
                        CodeConfirmationRoute(),
                      ),
                      child: CustomButton(label: 'Send'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      title: 'Forgot password',
    );
  }
}
