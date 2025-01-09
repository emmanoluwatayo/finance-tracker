import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/gen/assets.gen.dart';
import 'package:personal_finance_tracker/presentation/application/analytics/model/line_graph_style.dart';

class LineGraphWidget extends StatelessWidget {
  final List<FlSpot> safeSpots;
  final List<FlSpot> inRangeSpots;
  final List<FlSpot> overSpentSpots;
  final List<String> xLabels;
  final LineGraphStyle style;
  const LineGraphWidget({
    super.key,
    required this.safeSpots,
    required this.inRangeSpots,
    required this.overSpentSpots,
    required this.xLabels,
    required this.style,
  });

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
              'Total Expenses Over Time',
              style: getRegularStyle(
                color: AppColors.seeAllText,
                fontSize: FontSize.s18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 268,
            width: double.infinity,
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 20,
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
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return value.toInt() < xLabels.length
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  xLabels[value.toInt()],
                                  style: getRegularStyle(
                                    color:
                                        AppColors.inventoryTextfieldBorderColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink();
                      },
                      reservedSize: 42,
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: const Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: safeSpots,
                    isCurved: true,
                    color: style.safeColor,
                    barWidth: 1,
                    belowBarData: BarAreaData(show: false),
                  ),
                  LineChartBarData(
                    spots: inRangeSpots,
                    isCurved: true,
                    color: style.inRangeColor,
                    barWidth: 1,
                    belowBarData: BarAreaData(show: false),
                  ),
                  LineChartBarData(
                    spots: overSpentSpots,
                    isCurved: true,
                    color: style.overSpentColor,
                    barWidth: 1,
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
              ),
            ),
          ),
          const Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.icons.blueNode,
              ),
              const Gap(2),
              Text(
                "Safe",
                style: getRegularStyle(
                  color: AppColors.inventoryTextfieldBorderColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(8),
              SvgPicture.asset(Assets.icons.yellowNode),
              const Gap(2),
              Text(
                "In Range",
                style: getRegularStyle(
                  color: AppColors.inventoryTextfieldBorderColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(8),
              SvgPicture.asset(
                Assets.icons.yellowNode,
                color: style.overSpentColor,
              ),
              const Gap(2),
              Text(
                "Over Spent",
                style: getRegularStyle(
                  color: AppColors.inventoryTextfieldBorderColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
