import 'package:flutter/material.dart';
import 'package:i_bank/core_ui/colors/app_colors.dart';
import 'package:i_bank/presentation/screens/sign_up/sign_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: AppColors.primary1),
      home: SignScreen(),
    );
  }
}
