import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_tracker/core/constants/app_colors.dart';
import 'package:personal_finance_tracker/core/theme/font_manager.dart';
import 'package:personal_finance_tracker/core/theme/styles_manager.dart';
import 'package:pie_chart/pie_chart.dart';

// Sample data for the pie chart

Map<String, double> dataMap = {
  "Jan": 5,
  "Feb": 8,
  "Mar": 15,
  "Apr": 20,
  "May": 10,
  "Jun": 15,
  "Jul": 5,
  "Aug": 7,
  "Sept": 20,
  "Oct": 35,
  "Nov": 35,
  "Dec": 40,
};


class PaymentDistributionChart extends StatelessWidget {
  const PaymentDistributionChart({super.key});

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
              'Category Distribution',
              style: getRegularStyle(
                color: AppColors.seeAllText,
                fontSize: FontSize.s18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Gap(40),
          PieChart(
            dataMap: dataMap,
            animationDuration: const Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.sizeOf(context).width / 7.4,
            colorList: const [
              AppColors.liteAccentColor, // Light Accent
              AppColors.primaryColor, // Primary
              Color(0xFF005F73), // Darker Blue
            ],
            initialAngleInDegree: 0,
            chartType: ChartType.disc, // Full Pie Chart
            ringStrokeWidth: 70, // Thickness for the pie chart segments
            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              legendShape: BoxShape.circle,
              legendTextStyle: getRegularStyle(
                color: AppColors.inventoryTextfieldBorderColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            // Custom Formatter for Chart Values
            formatChartValues: (value) {
              String title = dataMap.entries
                  .firstWhere((element) => element.value == value)
                  .key;
              return '$title\n₦${value}M'; // Display title and value
            },
            chartValuesOptions: const ChartValuesOptions(
              showChartValueBackground: false,
              showChartValues: true,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
              decimalPlaces: 0,
              chartValueStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
