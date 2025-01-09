import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_tracker/application/bloc/finance_tracker/finance_tracker_bloc.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/shared/enums/processing_status.dart';
import 'package:personal_finance_tracker/core/shared/enums/status.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/presentation/application/budget/widgets/budget_category_card.dart';
import 'package:personal_finance_tracker/presentation/application/budget/widgets/line_graph.dart';
import 'package:personal_finance_tracker/presentation/core/toast_info.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({super.key});

  @override
  State<BudgetScreen> createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  @override
  void initState() {
    super.initState();
    // Dispatch the event to fetch pharmacy inventory items
    context.read<FinanceTrackerBloc>().add(
          const GetSpendingCategories(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FinanceTrackerBloc, FinanceTrackerState>(
      builder: (context, state) {
        if (state.processingStatus == ProcessingStatus.waiting) {
          return const Center(
            child: SpinKitCircle(
              color: AppColors.primaryColor,
            ),
          );
        } else if (state.processingStatus == ProcessingStatus.error) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                toastInfo(
                  msg: 'Ops! ${state.error.errorMsg}',
                  status: Status.error,
                ),
              ],
            ),
          );
        } else if (state.financeTransactions.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'No Transactions data available',
                  style: getRegularStyle(color: AppColors.greyText),
                ),
              ],
            ),
          );
        }
        final spendingCategories = state.spendingCategories;

        return Scaffold(
          backgroundColor: AppColors.litePrimaryColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 26,
                        right: 26,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(30),
                          // Title
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Budget',
                              style: getRegularStyle(
                                color: AppColors.vistaYellow,
                                fontSize: FontSize.s18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          // Description
                          Text(
                            'Track your expenses and manage budgets efficiently!',
                            style: getRegularStyle(
                              color: AppColors.vistaYellow,
                              fontSize: FontSize.s12,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          // Budget GridView with constrained height
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Flexible(
                              flex: 1,
                              child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 8.0,
                                  mainAxisSpacing: 8.0,
                                ),
                                itemCount: spendingCategories.length,
                                shrinkWrap:
                                    true, // Let GridView size itself based on its content
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final category = spendingCategories[index];
                                  final categoryName = category['category'];
                                  final budgetAmount = category['budgetAmount'];
                                  final totalSpent = category['totalSpent'];
                                  final amountRemaining =
                                      category['amountRemaining'];
                                  final progress = category['progress'];
                                  return BudgetCategoryCard(
                                    categoryName: categoryName,
                                    allocatedBudget: budgetAmount,
                                    amountSpent: totalSpent,
                                    amountRemaining: amountRemaining,
                                    color: progress >= 1.0
                                        ? AppColors.vistaRed
                                        : AppColors.seeAllText,
                                  );
                                },
                              ),
                            ),
                          ),
                          Gap(
                            20.h,
                          ),
                          const LineGraphWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
