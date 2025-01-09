import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/shared/validators/email_validator.dart';
import 'package:personal_finance_tracker/core/shared/validators/phone_number_validator.dart';
import 'package:personal_finance_tracker/core/shared/validators/str_min_length_validator.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/core/theme/values_manager.dart';
import 'package:personal_finance_tracker/presentation/application/authentication/enum/input_enum.dart';

class FormatterTextfied extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final bool isAutofocused;
  final InputEnum inputEnum;
  final List<TextInputFormatter>?
      inputFormatters; // Added for custom formatters

  const FormatterTextfied({
    super.key,
    required this.textController,
    required this.hintText,
    required this.isAutofocused,
    this.inputEnum = InputEnum.others,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: textController,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s4),
          borderSide: const BorderSide(
            color: AppColors.inventoryTextfieldBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s4),
          borderSide: const BorderSide(
            color: AppColors.inventoryTextfieldBorderColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s4),
          borderSide: const BorderSide(
            color: AppColors.vistaRed,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s4,
          ),
          borderSide: const BorderSide(
            color: AppColors.vistaRed,
          ),
        ),
        hintText: hintText,
        hintStyle: getRegularStyle(
          color: AppColors.newRecordHint,
          fontSize: FontSize.s10,
          fontWeight: FontWeight.w300,
        ),
      ),
      validator: (value) {
        switch (inputEnum) {
          case InputEnum.email:
            return validateEmail(value!);
          case InputEnum.phone:
            return validatePhoneNumber(value!);
          case InputEnum.others:
            return validateStrMinLength(value!, 3, hintText);
        }
      },
    );
  }
}
