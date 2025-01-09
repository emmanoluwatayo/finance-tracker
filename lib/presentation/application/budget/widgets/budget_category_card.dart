import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';

class BudgetCategoryCard extends StatelessWidget {
  final String categoryName;
  final double allocatedBudget;
  final double amountSpent;
  final double amountRemaining;
  final Color color;

  const BudgetCategoryCard({
    super.key,
    required this.categoryName,
    required this.amountSpent,
    required this.allocatedBudget,
    required this.amountRemaining,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    double percentage =
        allocatedBudget > 0 ? (amountSpent / allocatedBudget) : 0;

    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.paymentSearchBgColor,
          border: Border.all(
            width: 1,
            color: AppColors.rateConColor3,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            12.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20.h),
              // Category Name
              Text(
                categoryName,
                style: getRegularStyle(
                  color: AppColors.vistaBlackColor,
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(20.h),
              // Budget Amount
              Text(
                'Budget: ₦$allocatedBudget',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontFamily: FontConstants.fontFamily,
                  fontSize: 3.sp,
                ),
              ),
              Gap(20.h),
              // Spent Amount
              Text(
                'Spent: ₦$amountSpent',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontFamily: FontConstants.fontFamily,
                  fontSize: 3.sp,
                ),
              ),
              Gap(20.h),
              // Remaining Amount
              Text(
                'Remaining: ₦$amountRemaining',
                style: TextStyle(
                  color: amountRemaining < 0 ? Colors.red : Colors.grey[700],
                  fontFamily: FontConstants.fontFamily,
                  fontSize: 3.sp,
                ),
              ),
              Gap(25.h),
              // Progress Bar
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearPercentIndicator(
                  lineHeight: 8,
                  percent: percentage.clamp(0.0, 1.0),
                  backgroundColor: Colors.grey.shade300,
                  progressColor: color,
                  barRadius: const Radius.circular(8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
