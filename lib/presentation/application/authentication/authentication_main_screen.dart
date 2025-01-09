import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance_tracker/application/routes/app_routes_config.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/gen/assets.gen.dart';

class AuthenticationMainScreen extends StatelessWidget {
  const AuthenticationMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
               Assets.images.finLogo.path,
              width: 320,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoutes.loginScreen);
                },
                child: Container(
                  height: 52,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.vistaYellow,
                  ),
                  child: Center(
                    child: Text(
                      "Existing User",
                      style: getRegularStyle(
                        color: AppColors.vistaWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(32),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoutes.registerScreen);
                },
                child: Container(
                  height: 52,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      width: 1,
                      color: AppColors.vistaYellow,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "New User",
                      style: getRegularStyle(
                        color: AppColors.vistaYellow,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
