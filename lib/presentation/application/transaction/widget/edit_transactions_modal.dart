import 'package:flutter/material.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/presentation/application/authentication/enum/input_enum.dart';
import 'package:personal_finance_tracker/presentation/core/custom_textfield.dart';

class EditTransactionsWidget extends StatelessWidget {
  const EditTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final category = TextEditingController();
    final description = TextEditingController();
    final amount = TextEditingController();

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Container(
      height: 830,
      width: 624,
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 790,
        width: 584,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 40,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: AppColors.rateConColor3,
          ),
        ),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Edit Transactions',
                  style: getRegularStyle(
                    color: AppColors.paymentiTEMRowTextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Fill in the fields below to edit your transactions.",
                  style: getRegularStyle(
                    color: AppColors.vistaBlackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextfield(
                  textController: category,
                  hintText: 'Category',
                  inputEnum: InputEnum.others,
                  isAutofocused: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextfield(
                  textController: description,
                  hintText: 'Description',
                  inputEnum: InputEnum.others,
                  isAutofocused: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextfield(
                  textController: amount,
                  hintText: 'Amount ',
                  inputEnum: InputEnum.others,
                  isAutofocused: true,
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 52,
                          width: 206,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: AppColors.vistaYellow,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Close",
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
                    const SizedBox(
                      width: 52,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 52,
                          width: 206,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppColors.vistaYellow,
                          ),
                          child: Center(
                            child: Text(
                              "Save",
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
                  ],
                ),
                const SizedBox(
                  height: 84,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
