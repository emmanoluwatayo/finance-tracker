import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance_tracker/application/routes/app_routes_config.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/presentation/application/authentication/widget/auth_button.dart';
import 'package:personal_finance_tracker/presentation/application/authentication/widget/auth_textfield.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final GlobalKey<FormState> key = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: AppColors.vistaWhite,
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 464,
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.vistaWhite,
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.authenticationShadowColor,
                        spreadRadius: -4,
                        blurRadius: 16,
                        offset: Offset(0, 2),
                      ),
                    ],
                    border: Border.all(
                      width: 1,
                      color: AppColors.cashAtmBorderColor,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.arrow_back_ios,
                                size: 15,
                                color: AppColors.homeFirstAidSubTitleColor,
                              ),
                              Text(
                                "Back",
                                style: getRegularStyle(
                                  color: AppColors.homeFirstAidSubTitleColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Password Reset",
                        style: getRegularStyle(
                          color: AppColors.homeFirstAidSubTitleColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'We sent a confirmation code to ',
                              style: getRegularStyle(
                                color: AppColors.homeFirstAidSubTitleColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextSpan(
                              text: 'mercyhealthadmin@gmail.com',
                              style: getMediumStyle(
                                color: AppColors.homeFirstAidSubTitleColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "",
                        textAlign: TextAlign.center,
                        style: getRegularStyle(
                          color: AppColors.homeFirstAidSubTitleColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: AuthTextField(
                          isAutofocused: true,
                          textInputType: TextInputType.text,
                          hintText: 'Confirmation code',
                          controller: emailController,
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      AuthButton(
                        title: 'Continue',
                        onTap: () {
                          context.pushNamed(AppRoutes.newPasswordScreen);
                        },
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 24,
                          width: 259,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColors.primaryColor,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Didn\'t receive the email? ',
                                        style: getRegularStyle(
                                          color: AppColors
                                              .homeFirstAidSubTitleColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Click to resend',
                                        style: getRegularStyle(
                                            color: AppColors.primaryColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {},
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Icon(
                                  Icons.arrow_forward_rounded,
                                  color: AppColors.primaryColor,
                                  size: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      SizedBox(
                        width: 100,
                        child: AuthButton2(
                          title: 'Back to log in',
                          onTap: () {
                            context.pushNamed(AppRoutes.loginScreen);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "© Copyrights ${DateTime.now().year}",
                  style: getRegularStyle(
                    color: AppColors.paymentSubTextColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 66,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
