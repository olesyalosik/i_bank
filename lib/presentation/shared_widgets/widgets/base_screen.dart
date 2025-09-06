import 'package:flutter/material.dart';
import 'package:i_bank/core/app_di/app_di.dart';
import 'package:i_bank/core_ui/core_ui.dart';
import 'package:i_bank/navigation/app_router.dart';

class BaseScreen extends StatelessWidget {
  final Widget body;
  final String title;
  const BaseScreen({super.key, required this.body, this.title = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: GestureDetector(
          onTap: () => appLocator.get<AppRouter>().pop(),
          child: Icon(Icons.arrow_back_ios_new, color: AppColors.neutral1),
        ),
        backgroundColor: AppColors.neutral6,
        title: Text(
          title,
          style: AppTextStyles.titleMedium.copyWith(color: AppColors.neutral1),
        ),
      ),
      body: body,
    );
  }
}
