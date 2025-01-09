// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:personal_finance_tracker/application/bloc/finance_tracker/finance_tracker_bloc.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/shared/enums/processing_status.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/presentation/application/home/components/add_budgets.dart';
import 'package:personal_finance_tracker/presentation/application/home/components/add_expenses.dart';
import 'package:personal_finance_tracker/presentation/application/home/components/add_income.dart';
import 'package:personal_finance_tracker/presentation/application/home/widget/bar_chart_home.dart';
import 'package:personal_finance_tracker/presentation/application/home/widget/line_chart_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Trigger the FetchProfile event when the screen is first displayed
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FinanceTrackerBloc>().add(const GetFinanceSummary());
      context.read<FinanceTrackerBloc>().add(const GetSpendingCategories());
    });

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
            child: Text(
              'Oops! ${state.error.errorMsg}',
              style: getRegularStyle(color: AppColors.greyText),
            ),
          );
        } else if (state.financeSummary == null) {
          return Center(
            child: Text(
              'No profile data available.',
              style: getRegularStyle(color: AppColors.greyText),
            ),
          );
        } else if (state.spendingCategories == null) {
          return Center(
            child: Text(
              'No spending data available.',
              style: getRegularStyle(color: AppColors.greyText),
            ),
          );
        }

        final financeSummary = state.financeSummary;

        final spendingCategories = state.spendingCategories.take(4).toList();

        final totalIncome = financeSummary['totalIncome'] ?? 0.0;
        final totalExpenses = financeSummary['totalExpenses'] ?? 0.0;
        final currentBalance = financeSummary['currentBalance'] ?? 0.0;
        return Scaffold(
          backgroundColor: AppColors.litePrimaryColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(40),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  _quickActionButton(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const AddExpensesModal(),
                                          );
                                        },
                                      );
                                    },
                                    context: context,
                                    label: "Expense",
                                    icon: Icons.add_circle_outline,
                                    color: AppColors.vistaYellow,
                                  ),
                                  const Gap(16),
                                  _quickActionButton(
                                    context: context,
                                    label: "Income",
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const AddIncomeModal(),
                                          );
                                        },
                                      );
                                    },
                                    icon: Icons.attach_money_outlined,
                                    color: AppColors.vistaYellow,
                                  ),
                                  const Gap(16),
                                  _quickActionButton(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const AddBudgetModal(),
                                          );
                                        },
                                      );
                                    },
                                    context: context,
                                    label: "Budget",
                                    icon: Icons.settings_outlined,
                                    color: AppColors.vistaYellow,
                                  ),
                                ],
                              ),
                              const Gap(40),
                              // Current Balance & Monthly Overview
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      width: 1,
                                      color: AppColors.rateConColor3,
                                    )),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Flexible(
                                      child: _overviewItem(
                                        title: "Current Balance",
                                        amount: totalIncome.toStringAsFixed(2),
                                        icon: Icons
                                            .account_balance_wallet_outlined,
                                        color: AppColors.seeAllText,
                                        backgroundColor:
                                            AppColors.litePrimaryColor,
                                      ),
                                    ),
                                    Flexible(
                                      child: _overviewItem(
                                        title: "This Month's Spending",
                                        amount:
                                            totalExpenses.toStringAsFixed(2),
                                        icon: Icons.trending_down_outlined,
                                        color: AppColors.vistaRed,
                                        backgroundColor:
                                            AppColors.vistaRed.withOpacity(0.2),
                                      ),
                                    ),
                                    Flexible(
                                      child: _overviewItem(
                                        title: "Budget Remaining",
                                        amount:
                                            currentBalance.toStringAsFixed(2),
                                        icon: Icons.pie_chart_outline,
                                        color: AppColors.vistaGreen,
                                        backgroundColor: AppColors.vistaGreen
                                            .withOpacity(0.2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(24),
                              // Spending Categories Section
                              Text(
                                "Spending Categories",
                                style: getRegularStyle(
                                  color: AppColors.vistaBlackColor,
                                  fontSize: FontSize.s16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(16),
                              SizedBox(
                                height:
                                    120, // Set the desired height for the ListView
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: spendingCategories.length,
                                  itemBuilder: (context, index) {
                                    final category = spendingCategories[index];
                                    final categoryName = category['category'];
                                    final budgetAmount =
                                        category['budgetAmount'];
                                    final totalSpent = category['totalSpent'];
                                    final progress = category['progress'];

                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: _spendingCategoryItem(
                                        category: categoryName,
                                        amountSpent: totalSpent,
                                        budget: budgetAmount,
                                        color: progress >= 1.0
                                            ? Colors.red
                                            : Colors.blue,
                                      ),
                                    );
                                  },
                                ),
                              ),

                              const Gap(24),
                              // Quick Overview Graphs
                              Text(
                                "Quick Overview Graphs",
                                style: getRegularStyle(
                                  color: AppColors.vistaBlackColor,
                                  fontSize: FontSize.s16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              const Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: BarChartHome(),
                                  ),
                                  Gap(10),
                                  Expanded(
                                    flex: 1,
                                    child: LineChartHome(),
                                  ),
                                ],
                              ),

                              const Gap(40),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _overviewItem(
      {required String title,
      required String amount,
      required IconData icon,
      required Color color,
      required Color backgroundColor}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: backgroundColor,
          child: Icon(
            icon,
            color: color,
            size: 30,
          ),
        ),
        const Gap(8),
        Text(
          title,
          style: getRegularStyle(
            color: AppColors.homeFirstAidTitleColor,
            fontSize: FontSize.s18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(4),
        Text(
          amount,
          style: getRegularStyle(
            color: AppColors.homeFirstAidSubTitleColor,
            fontSize: FontSize.s18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _spendingCategoryItem({
    required String category,
    required double amountSpent,
    required double budget,
    required Color color,
  }) {
    double percentage = budget > 0 ? (amountSpent / budget) : 0;

    return SizedBox(
      width: 300,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: AppColors.rateConColor3),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              style: getRegularStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.cashAtmBorderColor,
              ),
            ),
            const Gap(8),
            Text(
              "₦$amountSpent of ₦$budget",
              style: getRegularStyle(
                fontSize: 14,
                color: AppColors.cashAtmBorderColor,
              ),
            ),
            const Gap(8),
            LinearPercentIndicator(
              lineHeight: 8,
              percent: percentage.clamp(0.0, 1.0),
              backgroundColor: Colors.grey.shade300,
              progressColor: color,
              barRadius: const Radius.circular(8),
            ),
          ],
        ),
      ),
    );
  }

  Widget _quickActionButton({
    required BuildContext context,
    required String label,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 100,
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          decoration: BoxDecoration(
            color: AppColors.seeAllText,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: AppColors.vistaWhite,
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: AppColors.vistaWhite,
                  ),
                ),
              ),
              const Gap(5),
              Text(
                label,
                style: getRegularStyle(
                  color: AppColors.vistaWhite,
                  fontSize: FontSize.s15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
