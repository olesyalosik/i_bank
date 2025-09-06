import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i_bank/core/app_di/app_di.dart';
import 'package:i_bank/core_ui/core_ui.dart';
import 'package:i_bank/navigation/app_router.dart';

import '../../../shared_widgets/shared_widgets.dart';

@RoutePage()
class CodeConfirmationScreen extends StatelessWidget {
  const CodeConfirmationScreen({super.key});

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
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          flex: 2,
                          child: CustomTextField(hintText: 'Code'),
                        ),
                        SizedBox(width: 12),
                        Flexible(flex: 1, child: CustomButton(label: 'Resend')),
                      ],
                    ),
                    SizedBox(height: 24),
                    RichText(
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.visible,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'We texted you a code to verify your phone number ',
                            style: AppTextStyles.bodySmall.copyWith(
                              color: AppColors.neutral2,
                            ),
                          ),
                          TextSpan(
                            text: '(+84) 0398829xxx',
                            style: AppTextStyles.semibold14.copyWith(
                              color: AppColors.primary2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Flexible(
                      child: Text(
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        "This code will expired 10 minutes after this message. If you don't get a message.",
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.neutral2,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    GestureDetector(
                      onTap: () => appLocator.get<AppRouter>().navigate(
                        ChangePasswordRoute(),
                      ),
                      child: CustomButton(label: 'Change Password'),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(bottom: 10),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'Change your phone number',
                  style: AppTextStyles.captionLarge.copyWith(
                    color: AppColors.primary1,
                  ),
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
