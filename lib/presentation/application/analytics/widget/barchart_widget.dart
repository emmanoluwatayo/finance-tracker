import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';

class BarChartWidget extends StatelessWidget {
  final List<FlSpot> incomeSpots;
  final List<FlSpot> expenseSpots;

  const BarChartWidget({
    super.key,
    required this.incomeSpots,
    required this.expenseSpots,
  });

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: List.generate(incomeSpots.length, (index) {
          return BarChartGroupData(
            x: incomeSpots[index].x.toInt(),
            barRods: [
              BarChartRodData(
                toY: incomeSpots[index].y,
                color: AppColors.seeAllText,
                width: 16,
              ),
              BarChartRodData(
                toY: expenseSpots[index].y,
                color: AppColors.vistaRed,
                width: 16,
              ),
            ],
          );
        }),
      ),
    );
  }
}
