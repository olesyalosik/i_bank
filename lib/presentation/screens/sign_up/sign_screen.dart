import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_bank/core_ui/colors/app_colors.dart';
import 'package:i_bank/core_ui/text_style/app_text_styles.dart';
import 'package:i_bank/presentation/screens/sign_up/widgets/sign_in_body.dart';
import 'package:i_bank/presentation/screens/sign_up/widgets/sign_up_body.dart';
import 'package:i_bank/presentation/shared_widgets/widgets/custom_button.dart';

@RoutePage()
class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  bool isSignUp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary1,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new, color: AppColors.neutral6),
        centerTitle: false,
        backgroundColor: AppColors.primary1,
        title: Text(
          textAlign: TextAlign.center,
          'Sign ${isSignUp ? 'up' : 'in'}',
          style: AppTextStyles.titleMedium.copyWith(color: AppColors.neutral6),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.neutral6,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 24),
              Text(
                textAlign: TextAlign.start,
                'Welcome ${isSignUp ? 'to us,' : 'Back'}',
                style: AppTextStyles.titleLarge.copyWith(
                  color: AppColors.primary1,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Hello there,  ${isSignUp ? 'create New account' : 'sign in to continue'}',
                style: AppTextStyles.captionSmall.copyWith(
                  color: AppColors.neutral1,
                ),
              ),
              SizedBox(height: 32),
              Center(
                child: SizedBox(
                  height: 165,
                  width: 213,
                  child: SvgPicture.asset(
                    'assets/svg/sign_up/${isSignUp ? 'sign_up_clock.svg' : 'sign_in_screen.svg'}',
                  ),
                ),
              ),
              SizedBox(height: 32),
              isSignUp ? SignInBody() : SignUpBody(),
              SizedBox(height: 40),
              CustomButton(label: 'Sign ${isSignUp ? 'up' : 'in'}'),
              if (!isSignUp)
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(vertical: 24),
                  child: SvgPicture.asset('assets/svg/sign_up/fingerprint.svg'),
                ),
              if (isSignUp) SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isSignUp ? 'Have an account? ' : "Don't have an account? ",
                    style: AppTextStyles.captionMedium.copyWith(
                      color: AppColors.neutral1,
                    ),
                  ),
                  SizedBox(width: 12),
                  GestureDetector(
                    onTap: () => setState(() {
                      isSignUp = !isSignUp;
                    }),
                    child: Text(
                      isSignUp ? 'Sign in' : 'Sign up',
                      style: AppTextStyles.captionLarge.copyWith(
                        color: AppColors.primary1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
