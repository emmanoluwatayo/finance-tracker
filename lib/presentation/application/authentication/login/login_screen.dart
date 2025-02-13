import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance_tracker/application/bloc/sign_in/sign_in_bloc.dart';
import 'package:personal_finance_tracker/application/routes/app_routes_config.dart';
import 'package:personal_finance_tracker/application/services/operations/after_operations.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/extensions/loading.dart';
import 'package:personal_finance_tracker/core/shared/enums/processing_status.dart';
import 'package:personal_finance_tracker/core/shared/enums/status.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/presentation/application/authentication/enum/input_enum.dart';
import 'package:personal_finance_tracker/presentation/application/authentication/widget/auth_button.dart';
import 'package:personal_finance_tracker/presentation/application/authentication/widget/auth_textfield.dart';
import 'package:personal_finance_tracker/presentation/core/toast_info.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscured = true;

  void toggleObscure() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  void signIn() {
    if (formKey.currentState!.validate()) {
      context.read<SignInBloc>().add(
            LoginWithEmailAndPassword(
              emailAddress: emailController.text,
              password: passwordController.text,
              context: context,
            ),
          );
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: BlocListener<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state.processingStatus == ProcessingStatus.waiting) {
            context.showLoader();
          } else if (state.processingStatus == ProcessingStatus.error) {
            context.hideLoader();
            toastInfo(
              msg: 'Ops! ${state.error.errorMsg}',
              status: Status.error,
            );
          } else if (state.processingStatus == ProcessingStatus.success) {
            context.hideLoader();
          AfterOperationNavigation.navigateToHomeScreen(context: context);
          }
        },
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Form(
                  key: formKey,
                  child: Container(
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
                        Text(
                          "Log In",
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
                          "Kindly enter your details below to log in to the admin portal.",
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
                            textInputType: TextInputType.emailAddress,
                            hintText: 'Email Address',
                            controller: emailController,
                            inputEnum: InputEnum.email,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: AuthPasswordTextField(
                            isObscured: isObscured,
                            toggleObscure: toggleObscure,
                            hintText: 'Password',
                            controller: passwordController,
                            isLoginField: true,
                          ),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: AuthButton(
                            title: 'Log in',
                            onTap: () {
                              signIn();
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Row(
                          children: [
                            AuthButton2(
                              title: 'Forgot Password?',
                              onTap: () {
                                context
                                    .pushNamed(AppRoutes.forgotPasswordScreen);
                              },
                            ),
                            const Spacer(),
                            AuthButton2(
                              title: 'Create New Account',
                              onTap: () {
                                context.pushNamed(AppRoutes.registerScreen);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
