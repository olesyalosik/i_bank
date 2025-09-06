import 'package:auto_route/auto_route.dart';
import 'package:i_bank/presentation/screens/forgot_password/screens/change_password_screen.dart';
import 'package:i_bank/presentation/screens/forgot_password/screens/code_confirmation_screen.dart';
import 'package:i_bank/presentation/screens/forgot_password/screens/forgot_password_screen.dart';
import 'package:i_bank/presentation/screens/forgot_password/screens/success_changed_password_screen.dart';
import 'package:i_bank/presentation/screens/sign_up/sign_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
    AutoRoute(page: SignRoute.page, initial: true),
    AutoRoute(page: ForgotPasswordRoute.page),
    AutoRoute(page: CodeConfirmationRoute.page),
    AutoRoute(page: ChangePasswordRoute.page),
    AutoRoute(page: SuccessChangedPasswordRoute.page),
  ];
}
