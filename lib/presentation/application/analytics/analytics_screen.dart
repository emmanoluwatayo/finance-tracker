// ignore_for_file: unnecessary_null_comparison

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_tracker/application/bloc/finance_tracker/finance_tracker_bloc.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/shared/enums/processing_status.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/presentation/application/analytics/model/line_graph_style.dart';
import 'package:personal_finance_tracker/presentation/application/analytics/widget/barchart_widget.dart';
import 'package:personal_finance_tracker/presentation/application/analytics/widget/expenses_comparison.dart';
import 'package:personal_finance_tracker/presentation/application/analytics/widget/line_graph_widget.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<FinanceTrackerBloc>();
      bloc.add(const FetchBudgetStatusOverTime());
      bloc.add(const FetchMonthlyIncomeExpense());
    });

    return BlocBuilder<FinanceTrackerBloc, FinanceTrackerState>(
      builder: (context, state) {
        if (state.processingStatus == ProcessingStatus.waiting) {
          return const Center(
            child: SpinKitCircle(color: AppColors.primaryColor),
          );
        } else if (state.processingStatus == ProcessingStatus.error) {
          return Center(
            child: Text(
              'Oops! ${state.error.errorMsg}',
              style: getRegularStyle(color: AppColors.greyText),
            ),
          );
        } else if (state.fetchBudgetStatusOverTime?.isEmpty ?? true) {
          return Center(
            child: Text(
              'No budget data available.',
              style: getRegularStyle(color: AppColors.greyText),
            ),
          );
        } else if (state.fetchMonthlyIncomeExpense?.isEmpty ?? true) {
          return Center(
            child: Text(
              'No monthly income or expense data available.',
              style: getRegularStyle(color: AppColors.greyText),
            ),
          );
        }

        final budgetStatusOverTime = List<Map<String, dynamic>>.from(state.fetchBudgetStatusOverTime);
        final barchart = state.fetchMonthlyIncomeExpense;

        final sortedBudgetStatusOverTime = budgetStatusOverTime
          ..sort((a, b) => a['timestamp'].compareTo(b['timestamp']));
        final safeSpots = sortedBudgetStatusOverTime
            .where((item) => item['status'] == 'safe')
            .map((item) => FlSpot(
                item['timestamp'].toDouble(), 
                item['amount'].toDouble()))
            .toList();
        final inRangeSpots = sortedBudgetStatusOverTime
            .where((item) => item['status'] == 'inRange')
            .map((item) => FlSpot(
                item['timestamp'].toDouble(), 
                item['amount'].toDouble()))
            .toList();
        final overSpentSpots = sortedBudgetStatusOverTime
            .where((item) => item['status'] == 'overSpent')
            .map((item) => FlSpot(
                item['timestamp'].toDouble(), 
                item['amount'].toDouble()))
            .toList();

        final incomeSpots = barchart
            .map((item) => FlSpot(
                double.tryParse(item['month'].split('-')[1]) ?? 0.0, 
                (item['income'] as num).toDouble()))
            .toList();
        final expenseSpots = barchart
            .map((item) => FlSpot(
                double.tryParse(item['month'].split('-')[1]) ?? 0.0, 
                (item['expense'] as num).toDouble()))
            .toList();

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
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(30),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Analytics',
                              style: getRegularStyle(
                                color: AppColors.vistaYellow,
                                fontSize: FontSize.s18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Expenses Analytics',
                            style: getRegularStyle(
                              color: AppColors.vistaYellow,
                              fontSize: FontSize.s12,
                            ),
                          ),
                          const SizedBox(height: 20),
                          BarChartWidget(
                            incomeSpots: incomeSpots,
                            expenseSpots: expenseSpots,
                          ),
                          const Gap(10),
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
