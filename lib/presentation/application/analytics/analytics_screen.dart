import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_tracker/application/bloc/finance_tracker/finance_tracker_bloc.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/shared/enums/processing_status.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ensure we perform actions only after the widget has been fully laid out
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<FinanceTrackerBloc>();
      bloc.add(const FetchBudgetStatusOverTime());
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
        } else if (state.fetchBudgetStatusOverTime.isEmpty) {
          return Center(
            child: Text(
              'No budget data available.',
              style: getRegularStyle(color: AppColors.greyText),
            ),
          );
        }

        final budgetStatusOverTime =
            List<Map<String, dynamic>>.from(state.fetchBudgetStatusOverTime);

        final sortedBudgetStatusOverTime = budgetStatusOverTime
          ..sort((a, b) {
            final timestampA = a['timestamp'] != null
                ? DateTime.tryParse(a['timestamp'])
                : null;
            final timestampB = b['timestamp'] != null
                ? DateTime.tryParse(b['timestamp'])
                : null;

            if (timestampA == null && timestampB == null) {
              return 0;
            } else if (timestampA == null) {
              return 1;
            } else if (timestampB == null) {
              return -1;
            }
            return timestampA.compareTo(timestampB);
          });

        final safeSpots = sortedBudgetStatusOverTime
            .where((item) => item['status'] == 'safe')
            .map((item) =>
                FlSpot(item['timestamp'].toDouble(), item['amount'].toDouble()))
            .toList();
        final inRangeSpots = sortedBudgetStatusOverTime
            .where((item) => item['status'] == 'inRange')
            .map((item) =>
                FlSpot(item['timestamp'].toDouble(), item['amount'].toDouble()))
            .toList();
        final overSpentSpots = sortedBudgetStatusOverTime
            .where((item) => item['status'] == 'overSpent')
            .map((item) =>
                FlSpot(item['timestamp'].toDouble(), item['amount'].toDouble()))
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
                          const Gap(10),
                          // Line Chart for Budget Status Over Time
                          LineChart(
                            LineChartData(
                              gridData: const FlGridData(show: false),
                              titlesData: const FlTitlesData(show: false),
                              borderData: FlBorderData(show: true),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: safeSpots,
                                  isCurved: true,
                                  color: AppColors.vistaGreen,
                                  dotData: const FlDotData(show: false),
                                ),
                                LineChartBarData(
                                  spots: inRangeSpots,
                                  isCurved: true,
                                  color: AppColors.vistaYellow,
                                  dotData: const FlDotData(show: false),
                                ),
                                LineChartBarData(
                                  spots: overSpentSpots,
                                  isCurved: true,
                                  color: AppColors.vistaRed,
                                  dotData: const FlDotData(show: false),
                                ),
                              ],
                            ),
                          ),
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
