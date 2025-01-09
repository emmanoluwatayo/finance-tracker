import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';

class ExpensesComparison extends StatefulWidget {
  const ExpensesComparison({super.key});

  @override
  State<ExpensesComparison> createState() => _ExpensesComparisonState();
}

class _ExpensesComparisonState extends State<ExpensesComparison> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          width: 1,
          color: AppColors.rateConColor3,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Income vs. Expenses Comparison',
              style: getRegularStyle(
                color: AppColors.seeAllText,
                fontSize: FontSize.s18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Spacer(),
          AspectRatio(
            aspectRatio: 5,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 100,
                barTouchData: BarTouchData(
                  enabled: true,
                  // allowTouchBarBackDraw: true,
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipColor: (group) => Colors.transparent,
                    tooltipMargin: 8,
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      return BarTooltipItem(
                        rod.toY.toString(),
                        getRegularStyle(
                          color: AppColors.inventoryTextfieldBorderColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    },
                  ),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final days = [
                          "Jan",
                          "Feb",
                          "Mar",
                          "Apr",
                          "May",
                          "Jun",
                          "Jul",
                          "Aug",
                          "Sept",
                          "Oct",
                          "Nov",
                          "Dec",
                        ];
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          child: Text(
                            days[value.toInt()],
                            style: getRegularStyle(
                              color: AppColors.inventoryTextfieldBorderColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      },
                      reservedSize: 42,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 25,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          value.toInt().toString(),
                          style: getRegularStyle(
                            color: AppColors.inventoryTextfieldBorderColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      },
                      reservedSize: 32,
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                ),
                gridData: const FlGridData(
                  show: false,
                ),
                borderData: FlBorderData(
                  show: true,
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
                barGroups: [
                  _makeGroupData(
                    0,
                    58,
                    13,
                    context,
                  ),
                  _makeGroupData(
                    1,
                    23,
                    45,
                    context,
                  ),
                  _makeGroupData(
                    2,
                    79,
                    71,
                    context,
                  ),
                  _makeGroupData(
                    3,
                    56,
                    31,
                    context,
                  ),
                  _makeGroupData(
                    4,
                    39,
                    73,
                    context,
                  ),
                  _makeGroupData(
                    5,
                    47,
                    38,
                    context,
                  ),
                  _makeGroupData(
                    6,
                    80,
                    28,
                    context,
                  ),
                   _makeGroupData(
                    7,
                    30,
                    70,
                    context,
                  ),
                   _makeGroupData(
                    8,
                    80,
                    40,
                    context,
                  ),
                   _makeGroupData(
                    9,
                    28,
                    50,
                    context,
                  ),
                   _makeGroupData(
                    10,
                    20,
                    40,
                    context,
                  ),
                   _makeGroupData(
                    11,
                    32,
                    67,
                    context,
                  ),
                ],
                groupsSpace: 12,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LegendItem(
                color: AppColors.primaryColor,
                text: 'Income',
              ),
              SizedBox(width: 20),
              LegendItem(
                color: AppColors.vistaYellow,
                text: 'Expenses',
              ),
            ],
          ),
        ],
      ),
    );
  }

  BarChartGroupData _makeGroupData(
      int x, double y1, double y2, BuildContext context) {
    return BarChartGroupData(
      x: x,
      barsSpace: 8,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: AppColors.primaryColor,
          width: MediaQuery.sizeOf(context).width / 25,
          borderRadius: BorderRadius.circular(0),
          rodStackItems: [
            BarChartRodStackItem(0, y1, AppColors.primaryColor),
          ],
          borderSide: BorderSide.none,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            color: Colors.transparent,
          ),
        ),
        BarChartRodData(
          toY: y2,
          color: AppColors.liteAccentColor,
          width: MediaQuery.sizeOf(context).width / 25,
          borderRadius: BorderRadius.circular(0),
          rodStackItems: [
            BarChartRodStackItem(0, y2, AppColors.liteAccentColor),
          ],
          borderSide: BorderSide.none,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            color: Colors.transparent,
          ),
        ),
      ],
      showingTooltipIndicators: [0, 1],
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String text;

  const LegendItem({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          color: color,
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: getRegularStyle(
            color: AppColors.inventoryTextfieldBorderColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
