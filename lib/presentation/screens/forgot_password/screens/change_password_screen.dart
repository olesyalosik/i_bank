import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:i_bank/core/app_di/app_di.dart';
import 'package:i_bank/core_ui/core_ui.dart';
import 'package:i_bank/navigation/app_router.dart';
import 'package:i_bank/presentation/shared_widgets/shared_widgets.dart';

@RoutePage()
class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
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
                CustomTextField(
                  label: 'Type your new password',
                  isPassword: true,
                ),
                SizedBox(height: 33),
                CustomTextField(label: 'Confirm password', isPassword: true),
                SizedBox(height: 74),
                GestureDetector(
                  onTap: () => appLocator.get<AppRouter>().navigate(
                    SuccessChangedPasswordRoute(),
                  ),
                  child: CustomButton(label: 'Change Password'),
                ),
              ],
            ),
          ),
        ),
      ),
      title: 'Change Password',
    );
  }
}
