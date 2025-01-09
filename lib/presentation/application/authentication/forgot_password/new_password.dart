import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance_tracker/application/routes/app_routes_config.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/gen/assets.gen.dart';
import 'package:personal_finance_tracker/presentation/application/authentication/widget/auth_button.dart';
import 'package:personal_finance_tracker/presentation/application/authentication/widget/auth_textfield.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  bool isObscured = true;

  void toggleObscure() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  bool isObscured2 = true;

  void toggleObscure2() {
    setState(() {
      isObscured2 = !isObscured2;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                        "Set New Password",
                        style: getRegularStyle(
                          color: AppColors.homeFirstAidSubTitleColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Text(
                        "It must be at least 8 characters.",
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
                        child: AuthPasswordTextField(
                          isAutofocused: true,
                          hintText: 'Password',
                          controller: passwordController,
                          isObscured: isObscured,
                          toggleObscure: toggleObscure,
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: AuthPasswordTextField(
                          hintText: 'Confirm Password',
                          controller: passwordController2,
                          passwordText: passwordController.text,
                          isConfirmPassword: true,
                          isObscured: isObscured2,
                          toggleObscure: toggleObscure2,
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      AuthButton(
                        title: 'Reset Password',
                        onTap: () {
                          showSuccessDialog(context);
                        },
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
                  height: 12,
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

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.gdMark.image(),
            const SizedBox(
              height: 10,
            ),
            Text(
              "All done!",
              style: getRegularStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Your password has been reset.",
              style: getRegularStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      );
    },
  );
}
