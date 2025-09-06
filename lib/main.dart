import 'package:flutter/material.dart';
import 'package:i_bank/core/app_di/app_di.dart';
import 'package:i_bank/core_ui/colors/app_colors.dart';
import 'package:i_bank/navigation/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  appDI.initDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primaryColor: AppColors.primary1,
        scaffoldBackgroundColor: AppColors.neutral6,
      ),
      routerConfig: appLocator.get<AppRouter>().config(),
    );
  }
}
