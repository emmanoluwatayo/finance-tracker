import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/application/bloc/finance_tracker/finance_tracker_bloc.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/extensions/loading.dart';
import 'package:personal_finance_tracker/core/shared/enums/processing_status.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/presentation/application/authentication/enum/input_enum.dart';
import 'package:personal_finance_tracker/presentation/core/custom_textfield.dart';
import 'package:personal_finance_tracker/presentation/core/toast_info.dart';
import 'package:personal_finance_tracker/presentation/utilities/custom_formatter.dart';
import 'package:personal_finance_tracker/presentation/utilities/formatter_textfied.dart';
import 'package:personal_finance_tracker/presentation/utilities/success_content.dart';

import '../../../../core/shared/enums/status.dart';

class AddBudgetModal extends StatelessWidget {
  const AddBudgetModal({super.key});

  @override
  Widget build(BuildContext context) {
    final category = TextEditingController();
    final amount = TextEditingController();

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    void addNewBudget() {
      if (formKey.currentState!.validate()) {
        try {
          final double parsedAmount = double.parse(
            amount.text.replaceAll(RegExp(r'[^\d.]'), ''),
          );
          context.read<FinanceTrackerBloc>().add(
                AddBudget(
                  amount: parsedAmount,
                  categoryType: category.text,
                ),
              );
        } catch (e) {
          toastInfo(
            msg: "Invalid amount entered. Please enter a valid number!",
            status: Status.error,
          );
          return;
        }
      } else {
        toastInfo(
          msg: "You need to fill all info!",
          status: Status.error,
        );
        return;
      }
    }

    return BlocListener<FinanceTrackerBloc, FinanceTrackerState>(
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
          Navigator.of(context).pop();
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const SuccessContentModal(
                  title: 'New Budget Added',
                  subtitle:
                      'New Budget has been added successfully and the relevant records have been updated.',
                ),
              );
            },
          );
        }
      },
      child: Container(
        height: 630,
        width: 624,
        padding: const EdgeInsets.all(16),
        child: Container(
          height: 520,
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
                    'Add Your Income',
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
                    "Fill in the fields below to add your Income",
                    style: getRegularStyle(
                      color: AppColors.vistaBlackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  FormatterTextfied(
                    textController: amount,
                    hintText: 'budget Amount',
                    inputEnum: InputEnum.others,
                    inputFormatters: [
                      CurrencyInputFormatter(
                        locale: 'en_US', // Change to your preferred locale
                        currencySymbol:
                            '₦', // Adjust for your desired currency symbol
                      ),
                    ],
                    isAutofocused: true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTxtField2(
                    textController: category,
                    hintText: 'Categories',
                    dropdownItems: const [
                      'Food',
                      'Transportation',
                      'Entertainment',
                      'Utilities',
                      'Healthcare',
                      'Education',
                      'Miscellaneous',
                      'Family',
                      'Savings',
                      'Housing',
                    ],
                    onItemSelected: (String selectedItem) {
                      category.text = selectedItem;
                      if (kDebugMode) {
                        print(category.text);
                      }
                    },
                  ),
                  // const SizedBox(
                  //   height: 40,
                  // ),
                  // CustomTextfield(
                  //   textController: discriptions,
                  //   hintText: 'Discriptions',
                  //   inputEnum: InputEnum.others,
                  //   isAutofocused: true,
                  // ),
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
                          onTap: () {
                            addNewBudget();
                          },
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
      ),
    );
  }
}
