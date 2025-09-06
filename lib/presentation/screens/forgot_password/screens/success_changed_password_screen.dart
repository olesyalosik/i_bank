import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bank/core/app_di/app_di.dart';
import 'package:i_bank/core_ui/core_ui.dart';
import 'package:i_bank/navigation/app_router.dart';
import 'package:i_bank/presentation/shared_widgets/shared_widgets.dart';

@RoutePage()
class SuccessChangedPasswordScreen extends StatelessWidget {
  const SuccessChangedPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset('assets/svg/forgot_password/success.svg'),
            SizedBox(height: 32),
            Text(
              'Changed password successfully!',
              style: AppTextStyles.titleSmall.copyWith(
                color: AppColors.primary1,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            Text(
              'You have successfully change password. Please use the new password when Sign in.',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.neutral1,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            GestureDetector(
              onTap: () => appLocator.get<AppRouter>().navigate(SignRoute()),
              child: CustomButton(label: 'Ok'),
            ),
          ],
        ),
      ),
    );
  }
}
