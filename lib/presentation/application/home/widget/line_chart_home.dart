import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:personal_finance_tracker/gen/assets.gen.dart';

class LineChartHome extends StatelessWidget {
  const LineChartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(50),
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
                          final days = [
                            'Sunday',
                            'Monday',
                            'Tuesday',
                            'Wednesday',
                            'Thursday',
                            'Friday',
                            'Saturday'
                          ];
                          return value.toString().length == 1
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      days[value.toInt()],
                                      style: getRegularStyle(
                                        color: AppColors
                                            .inventoryTextfieldBorderColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
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
                      spots: const [
                        FlSpot(0, 1),
                        FlSpot(1, 50),
                        FlSpot(2, 70),
                        FlSpot(3, 100),
                        FlSpot(4, 45),
                        FlSpot(5, 30),
                        FlSpot(6, 20),
                      ],
                      isCurved: true,
                      color: AppColors.barLineColor,
                      barWidth: 1,
                      belowBarData: BarAreaData(show: false),
                    ),
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 40),
                        FlSpot(1, 66),
                        FlSpot(2, 26),
                        FlSpot(3, 80),
                        FlSpot(4, 26),
                        FlSpot(5, 30),
                        FlSpot(6, 20),
                      ],
                      isCurved: true,
                      color: AppColors.vistaRed,
                      barWidth: 1,
                      belowBarData: BarAreaData(show: false),
                    ),
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 20),
                        FlSpot(1, 64),
                        FlSpot(2, 36),
                        FlSpot(3, 83),
                        FlSpot(4, 36),
                        FlSpot(5, 62),
                        FlSpot(6, 55),
                      ],
                      isCurved: true,
                      color: AppColors.liteAccentColor,
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
                SvgPicture.asset(Assets.icons.blueNode),
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
                  color: AppColors.vistaRed,
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
      ),
    );
  }
}
